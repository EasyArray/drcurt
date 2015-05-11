# Checkout #

You should only need to do this once, to get the project from the repository initially.

1. In the command line, go to a directory that you'd like to use as your working directory for drcurt

2. copy and paste the following command into your terminal

svn checkout https://drcurt.googlecode.com/svn/trunk/ drcurt --username GOOGLEUSERNAME

(change GOOGLEUSERNAME to your google account name)

3. enter your googlecode password when prompted
you can find this at

https://code.google.com/hosting/settings

# Update #

Before working on any files, make sure your working directory is up to date with:

svn update

# Make changes #

Edit files on your own computer. If you want to add a new file, create it in your working directory, then before committing, do:

svn add fileName.pl

# Commit #

Committing updates the repository with your changes. Do:

svn commit -m "a description of what you changed" --username GOOGLEUSERNAME

(again, change GOOGLEUSERNAME to your google account name)