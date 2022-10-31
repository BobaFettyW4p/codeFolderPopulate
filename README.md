# codeFolderPopulate

This script will do 2 things:
1)Check for the existence of a ~/code folder; if it does not exist, it will create it
2)Check all files in the ~ directory for local git repositories (by seeing if there is a .git folder inside of it). Any local git repositories are moved to the ~/code folder; all other files are unchanged
