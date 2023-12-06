#!/bin/bash -l

function install_gh {
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null
	apt update
	apt install -y gh
}


function checkout {
	git clone $GITHUB_SERVER_URL/$GITHUB_REPOSITORY $GITHUB_REPOSITORY
	cd $GITHUB_REPOSITORY
	git checkout $GITHUB_REF
	pwd
	ls -lt
}

function release_gh_page {
	git init
        git config user.name "airdb-bot"
        git config user.email "airdb-bot@airdb.com"
        git add -A
        git commit -m "Auto Update by actions"
	gh_pages_branch="gh-pages"
	if [[ $GITHUB_REF != "refs/heads/main" ]]; then
		gh_pages_branch="main"
	fi

        git push --force "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}" $gh_pages_branch
}


# main
echo "========Welcome to use github action dockerfile."
env

checkout

install_gh

gh repo list bbhj

echo "========Finish to use github action dockerfile."
