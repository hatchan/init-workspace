#!/bin/bash

main() {
	local username=${1:?"username is required"}
	local repository=${2:?"repository is required"}
	local host="github.com"

	local repo_path=${repository}/src/${host}/${username}/${repository}

	mkdir -p "${repo_path}"
	git clone "git@${host}:${username}/${repository}" "${repo_path}"
	echo "layout go" > ".envrc"
}

main $@
