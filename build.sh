#!/bin/sh
# Common Setup, DO NOT MODIFY
cd /app
set -e

# COMPLETE THE FOLLOWING SECTIONS
###############################################
# PROJECT DEPENDENCIES AND CONFIGURATION
###############################################
# TODO: Install project dependencies if needed based on relevant config/lock files in the repo.
# Note that we are developing the project, even if dependencies have been installed before, we need to install again to accommodate the changes we made.
pip install -r app/requirements.txt
pip install -r app/test_requirements.txt

export ANSIBLE_LIBRARY=/app/app/library
export ANSIBLE_MODULE_UTILS=/app/app/library/module_utils

###############################################
# BUILD
###############################################
echo "================= 0909 BUILD START 0909 ================="
# TODO: Build the project if needed. Note that we are developing the project and making changes to it, even if it has been build before, we need to build it again.
# <build-commands>
echo "================= 0909 BUILD END 0909 ================="