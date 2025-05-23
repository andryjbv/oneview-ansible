#!/bin/bash
### COMMON SETUP; DO NOT MODIFY ###
set -e

# allow script to continue even if tests fail
set +e

# --- CONFIGURE THIS SECTION ---
# Run entire test suite
run_all_tests() {
  echo "Running all tests..."
  export ANSIBLE_LIBRARY=app/library
  export ANSIBLE_MODULE_UTILS=$ANSIBLE_LIBRARY/module_utils
  export PYTHONPATH="stubs:app/test:$ANSIBLE_LIBRARY:$PYTHONPATH"
  pytest -v app/test
}

# Run a subset of test files
run_selected_tests() {
  local test_files=("$@")
  echo "Running selected tests: ${test_files[@]}"
  export ANSIBLE_LIBRARY=app/library
  export ANSIBLE_MODULE_UTILS=$ANSIBLE_LIBRARY/module_utils
  export PYTHONPATH="stubs:app/test:$ANSIBLE_LIBRARY:$PYTHONPATH"
  pytest -v "${test_files[@]}"
}
# --- END CONFIGURATION SECTION ---

### COMMON EXECUTION; DO NOT MODIFY ###

if [ $# -eq 0 ]; then
  run_all_tests > /workspace/stdout.txt 2> /workspace/stderr.txt
else
  if [[ "$1" == *","* ]]; then
    IFS=',' read -r -a TEST_FILES <<< "$1"
  else
    TEST_FILES=("$@")
  fi
  run_selected_tests "${TEST_FILES[@]}" > /workspace/stdout.txt 2> /workspace/stderr.txt
fi

exit 0
