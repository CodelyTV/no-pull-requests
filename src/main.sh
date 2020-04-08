#!/usr/bin/env bash

source "$PROJECT_HOME/src/ensure.sh"
source "$PROJECT_HOME/src/github.sh"
source "$PROJECT_HOME/src/github_actions.sh"
source "$PROJECT_HOME/src/misc.sh"

main() {
  ensure::env_variable_exist "GITHUB_REPOSITORY"
  ensure::env_variable_exist "GITHUB_EVENT_PATH"
  ensure::total_args 2 "$@"

  export GITHUB_TOKEN="$1"
  local -r message="$2"

  local -r pr_number=$(github_actions::get_pr_number)

  github::comment_pr "$pr_number" "$message"
  github::close_pr "$pr_number"

  exit $?
}
