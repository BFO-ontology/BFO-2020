#### Basic Formal Ontology Pipeline
# Adapted from https://github.com/tmprd/ontology-pipeline/blob/master/Makefile by Tim Prudhomme <tmprdh@gmail.com>, which was heavily adapted from https://github.com/obi-ontology/obi/blob/master/Makefile by James Overton <james@overton.ca>.
# Contact - John Beverley <johnbeve@buffalo.edu>

# ----------------------------------------
# Project essentials
config.ONTOLOGY_FILE	:= src/owl/bfo-core.ttl
config.ONTOLOGY_PREFIX	:= BFO
config.ONTOLOGY-IRI		:= http://purl.obolibrary.org/obo/bfo
config.BASE_IRI			:= $(config.ONTOLOGY-IRI)_
config.DEV_IRI			:= $(config.ONTOLOGY-IRI)/dev
config.MODULES_IRI		:= $(config.DEV_IRI)/modules

# Local project directories
config.SOURCE_DIR		:= src/owl
config.TEMP_DIR			:= build/artifacts
config.RELEASE_DIR		:= /
config.REPORTS_DIR		:= $(config.TEMP_DIR)
config.QUERIES_DIR		:= documentation/sparql
config.LIBRARY_DIR		:= build/lib

# Settings
# These will cause targets run by a Github Action to fail, if desired
config.FAIL_ON_TEST_FAILURES := false 
config.REPORT_FAIL_ON := none

# Other constants
TODAY		:= $(shell date +%Y-%m-%d)
TIMESTAMP	:= $(shell date +'%Y-%m-%d %H:%M')

# Default name for release. Ideally this should incude some kind of semantic versioning
config.RELEASE_NAME := $(config.ONTOLOGY_PREFIX) $(TIMESTAMP)

# Generic files
EDITOR_BUILD_FILE = $(config.ONTOLOGY_FILE) # "editors ontology module" http://purl.obolibrary.org/obo/IAO_8000002
RELEASE_BUILD_FILE = $(config.ONTOLOGY_PREFIX).owl # "main release ontology module" http://purl.obolibrary.org/obo/IAO_8000003

EDITOR_REPORT_FILE = $(config.REPORTS_DIR)/$(config.ONTOLOGY_PREFIX)-edit-report.tsv
RELEASE_REPORT_FILE = $(config.REPORTS_DIR)/$(config.ONTOLOGY_PREFIX)-release-report.tsv

# Generic directories to create if needed
REQUIRED_DIRS = $(config.TEMP_DIR) $(config.LIBRARY_DIR) $(config.SOURCE_DIR) $(config.QUERIES_DIR) $(config.REPORTS_DIR)


# ----------------------------------------
#### Targets / main "goals" of this Makefile
.PHONY: all
all: reason-edit test-edit build-release reason-release test-release

build-release: $(RELEASE_BUILD_FILE)

# These use Target-Specific Variables as parameters of reusable targets
.PHONY: test-edit test-release reason-edit reason-release
reason-edit test-edit:				TEST_INPUT = $(EDITOR_BUILD_FILE)
test-edit:							REPORT_FILE_INPUT = $(EDITOR_REPORT_FILE)
reason-release test-release:		TEST_INPUT = $(RELEASE_BUILD_FILE)
test-release:						REPORT_FILE_INPUT = $(RELEASE_REPORT_FILE)
# (This is a disjunction mapped to a conjunction: either target maps to all of these targets)
test-edit test-release: report verify
reason-edit reason-release: reason

.PHONY: report-edit report-release
report-edit:				TEST_INPUT = $(EDITOR_BUILD_FILE)
report-edit:				REPORT_FILE_INPUT = $(EDITOR_REPORT_FILE)
report-release:				TEST_INPUT = $(RELEASE_BUILD_FILE)
report-release:				REPORT_FILE_INPUT = $(RELEASE_REPORT_FILE)
report-edit report-release: report

# These simply output certain variables that are useful to a Github Action
.PHONY: output-release-filepath
output-release-filepath:
	@echo $(RELEASE_BUILD_FILE)

.PHONY: output-release-version
output-release-name:
	@echo $(config.RELEASE_NAME)

# ----------------------------------------
#### Setup / configure Make to use with our project
# Make configuration --- Ignore this section unless curious
# <http://clarkgrubb.com/makefile-style-guide#toc2>
MAKEFLAGS += --warn-undefined-variables
SHELL := bash # need bash to use `pipefail`
# `-e` causes exit if a command fails. `-u` causes exit for undefined variables. `-c` passes Make script to bash
# `pipefail` causes a chain of piped commands to fail if any of its commands fail
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := all # default target running Make without arguments
.DELETE_ON_ERROR: # delete target if recipe fails
.SUFFIXES: # ?
.SECONDARY: # ?

# Create any of these directories if they don't exist
$(REQUIRED_DIRS):
	mkdir -p $@

# ROBOT
ROBOT_FILE := $(config.LIBRARY_DIR)/robot.jar
$(ROBOT_FILE): | $(config.LIBRARY_DIR)
	curl -L -o $@ https://github.com/ontodev/robot/releases/download/v1.8.4/robot.jar

ROBOT := java -jar $(ROBOT_FILE)

# Cleanup
.PHONY: clean
clean:
	@[ "${config.TEMP_DIR}" ] || ( echo ">> config.TEMP_DIR is not set"; exit 1 )
	rm -rf $(config.TEMP_DIR)
	rm -rf $(RELEASE_BUILD_FILE)


# ----------------------------------------
#### Build / different versions of the ontology
$(RELEASE_BUILD_FILE): $(EDITOR_BUILD_FILE)
	$(ROBOT) reason --input $< --reasoner HermiT \
	annotate ${call annotation-inputs,$@}

# Function using parameter `$@` to build arguments for `annnotate`, which could be reused in other builds
define annotation-inputs
	--ontology-iri "$(config.ONTOLOGY-IRI)/$1" \
	--version-iri "$(config.ONTOLOGY-IRI)/$(TODAY)/$1" \
	--annotation owl:versionInfo "$(TODAY)" \
	--output $@ 
endef


# ----------------------------------------
#### Test / test ontology with reasoners and queries
QUERIES = $(wildcard $(config.QUERIES_DIR)/*.sparql)

# Check for inconsistency
.PHONY: reason
reason: $(TEST_INPUT) | $(ROBOT_FILE)
	$(ROBOT) reason --input $(TEST_INPUT) --reasoner ELK

# Test using specific queries
.PHONY: verify
verify: $(TEST_INPUT) $(QUERIES) | $(config.QUERIES_DIR) $(config.TEMP_DIR) $(ROBOT_FILE)
ifeq ($(QUERIES),)
	$(warning No query files found in $(config.QUERIES_DIR))
else
	$(ROBOT) verify --input $(TEST_INPUT) --output-dir $(config.TEMP_DIR) --queries $(QUERIES) --fail-on-violation $(config.FAIL_ON_TEST_FAILURES)
endif

# Report using built-in ROBOT queries
.PHONY: report
report: $(TEST_INPUT) | $(config.REPORTS_DIR) $(ROBOT_FILE)
	$(ROBOT) report --input $(TEST_INPUT) \
	--labels true \
	--fail-on $(config.REPORT_FAIL_ON) \
	--print 10 \
	--output $(REPORT_FILE_INPUT)


# ----------------------------------------
#### Make syntax cheatsheet
# targets
# .PHONY means a target that isn't a file to be created or checked

# automatic variables
# $@ means target
# $< means first prerequisite
# $^ means all prerequisites

# := means simply expand
# = means recursively/lazily expand
