README for A2: Mini Project

gitauto.sh

Brief explanation: My shell tool "gitauto.sh" is meant to make maintaining your git repo up-to-date a bit easier.

What this command does: This shell script automatically adds updated files to the staginga rea and commits
them.

Why/When this command is useful: While you would usually have to "git add <filename>" each updated file to the staging area and add a commit message for each update, this tool helps save a bit of time when pushing updates.
 
How to use command: To use the command, add the .gitauto.sh file to your bin folder and give it permission to be executed. Because this file takes the input of a directory(that should include a git repo), type "./gitauto.sh <directory of repo>" to use the command.

Examle of command use: This command only works to check the updates of a file already being tracked with git, meaning a file only has to be added once(the first time) to teh staging area. after that, you can call "./gitauto.sh <directory of repo>" to check for updates.


