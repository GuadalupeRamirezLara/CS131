# README for A2-Mini Project: gitauto.sh
Author: Guadalupe Ramirez Lara, CS131

## Brief explanation:
My shell tool "gitauto.sh" is meant to make maintaining your git repo up-to-date a bit easier.

## What this command does:
This shell script automatically adds updated files to the staging area and commits them.

## Why/When this command is useful:
While you would usually have to "git add <file/directory name>" to add it to the staging area, then add a commit message for each update to your repo, this tool helps save a bit of hassle when pushing updates.
 
## How to use command:
To use the command, add the .gitauto.sh file to a directory  and give it permission to be executed with "chmod 755 gitauto.sh". Because this file takes the input of a directory(that should include a git repo), type "./gitauto.sh <directory of repo>" to use the command.

## Examle of command use:
This command works to check the additions and updates tracked with git, meaning a file can be created and only has to be added to the repo once, and after that, you can call "./gitauto.sh <directory of repo>" for any update. This tool will not push untracked files.

### Added README.md to staging area for first time
Command:   git add README.md

### Check status
Command:   git status
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
       
        new file:   README.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        
        ../.gitignore
        
        ../Worksheets/WS2/CS131/
        
        gitauto.sh
        
        ../cdms.log
        
        ../cmds.log
        
        ../gitauto
        
        ../sample1.txt
        
        ../sample1/
        
        ../sorted_data.txt
        
        ../temp2/

### Edit README.md after first time adding it to git
Command:  vim README.md

### Call shell tool to stage and commit edits
Note: in this example, my directory input to gitauto.sh was '..' because I was currently working in the a2 directory, while the repo CS131 is in the parent directory of the a2 folder.
Command: ./gitauto.sh ..

CHECKING: repo updates...

NEW: updates found.

AUTO-COMMIT: committing all updates

[main 5840344] auto-committing all updates

 17 files changed, 1323 insertions(+), 32 deletions(-)

AUTO-COMMIT: committed all updates

LATEST: updates committed. Ready to push.

### Edit again (new)
Command: vim README.md

Command: ./gitauto.sh ..

CHECKING: repo updates...

NEW: updates found.

AUTO-COMMIT: committing all updates

[main 58fea40] auto-committed all updates

 1 file changed, 5 insertions(+), 11 deletions(-)

AUTO-COMMIT: committed all updates

LATEST: updates committed. Ready to push.

### Check git status
Command: git status

On branch main

Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

