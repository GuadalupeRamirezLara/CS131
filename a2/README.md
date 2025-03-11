README for A2: Mini Project

gitauto.sh

# Brief explanation:
My shell tool "gitauto.sh" is meant to make maintaining your git repo up-to-date a bit easier.

# What this command does:
This shell script automatically adds updated files to the staginga rea and commits
them.

# Why/When this command is useful:
While you would usually have to "git add <filename>" each updated file to the staging area and add a commit message for each update, this tool helps save a bit of time when pushing updates.
 
# How to use command:
To use the command, add the .gitauto.sh file to your a folder and give it permission to be executed with "chmod 755 gitauto.sh". Because this file takes the input of a directory(that should include a git repo), type "./gitauto.sh <directory of repo>" to use the command.

# Examle of command use:
This command only works to check the updates of a file already being tracked with git, meaning a file only has to be added once(the first time) to teh staging area. after that, you can call "./gitauto.sh <directory of repo>" to check for updates.

# added README.md to staging area for first time
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ git add README.md
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

# edit README.md after first time adding it to git
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ vim README.md

# call the shell tool
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$  ./gitauto.sh ..
CHECKING: repo updates...
NEW: updates found.
AUTO-COMMIT: committing a2/README.md updates
[main 5f8386a] auto-committing updates for: a2/README.md
 1 file changed, 16 insertions(+)
 create mode 100644 a2/README.md
AUTO-COMMIT: committed a2/README.md updates
LATEST: updates committed. Ready to push.

# checking git status for new commit (added a commit, ready to push)
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ git status
On branch main
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

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

no changes added to commit (use "git add" and/or "git commit -a")
guadalupe_ramirezlara@instance-20250202-003141:~/CS131/a2$ 
