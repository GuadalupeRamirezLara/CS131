# README for A2-Mini Project: gitauto.sh
Author: Guadalupe Ramirez Lara

## Brief explanation:
My shell tool "gitauto.sh" is meant to make maintaining your git repo up-to-date a bit easier.

## What this command does:
This shell script automatically adds updated files to the staginga rea and commits
them.

## Why/When this command is useful:
While you would usually have to "git add <filename>" each updated file to the staging area and add a commit message for each update, this tool helps save a bit of time when pushing updates.
 
## How to use command:
To use the command, add the .gitauto.sh file to your a folder and give it permission to be executed with "chmod 755 gitauto.sh". Because this file takes the input of a directory(that should include a git repo), type "./gitauto.sh <directory of repo>" to use the command.

## Examle of command use:
This command works to check the additions and updates tracked with git, meaning a file can be created, and after that, you can call "./gitauto.sh <directory of repo>".

### Added README.md to staging area for first time
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ git add README.md
### Check status
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ git status
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
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ vim README.md

### Call shell tool to stage and commit edits
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ ./gitauto.sh ..
CHECKING: repo updates...
NEW: updates found.
AUTO-COMMIT: committing a2/README.md updates
[main 5840344] auto-committing updates for: a2/README.md
 17 files changed, 1323 insertions(+), 32 deletions(-)
 create mode 100644 .gitignore
 create mode 160000 Worksheets/WS2/CS131
 create mode 100755 a2/gitauto.sh
 create mode 100644 cdms.log
 create mode 100644 cmds.log
 create mode 100755 gitauto
 create mode 100644 sample1.txt
 create mode 100644 sample1/README.md
 create mode 100644 sample1/awkfile
 create mode 100644 sample1/file.html
 create mode 100644 sample1/long.sh
 create mode 100644 sample1/newfile.html
 create mode 100755 sample1/sample
 create mode 100644 sample1/sample.html
 create mode 100644 sorted_data.txt
 create mode 100644 temp2/sample.txt
AUTO-COMMIT: committed a2/README.md updates
LATEST: updates committed. Ready to push.

### Edit again (new)
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ vim README.md
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ ./gitauto.sh ..
CHECKING: repo updates...
NEW: updates found.
AUTO-COMMIT: committing all updates
[main 58fea40] auto-committed all updates
 1 file changed, 5 insertions(+), 11 deletions(-)
AUTO-COMMIT: committed all updates
LATEST: updates committed. Ready to push.

### Check git status
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ git status
On branch main
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$  
