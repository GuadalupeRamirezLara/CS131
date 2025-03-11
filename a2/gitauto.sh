#!/bin/bash

# This is a script to automatically add and commit repo changes

GITPATH="/usr/bin/git"
GREPPATH="/usr/bin/grep"
AWKPATH="/usr/bin/awk"
# error if used incorrectly (exit code to show error)
if [ "$#" -ne 1 ]; then
    echo "ERROR: Please add a repo path to the command format: ./gitauto.sh <repo path>"
    exit 1
fi

PATH=$1 # get path from input (directory w/ git repo)

# error if no git repo found (exit code to show error)
if [ ! -d "$PATH/.git" ]; then
        echo "ERROR: git repo not found for: $PATH"
        exit 1
fi

cd $PATH # move to input path if no error

# method to check for updates in repo (return 1 if error, 0 if no error)
checkForUpdates() {
        echo "CHECKING: repo updates..."

        if [[ $($GITPATH status --porcelain) ]]; then
                echo "NEW: updates found."
                return 0
        else
                echo "LATEST: no updates found."
                return 1
        fi
}

# method to commit changes
commitUpdates() {
        echo "AUTO-COMMIT: committing all updates"
        $GITPATH add -A
        $GITPATH commit -m "auto-committed all updates"
        echo "AUTO-COMMIT: committed all updates"
}

# checking for updates
checkForUpdates
if [ $? -eq 0 ]; then
        commitUpdates
        echo "LATEST: updates committed. Ready to push."
else
        echo "LATEST: no updates to commit."
fi
