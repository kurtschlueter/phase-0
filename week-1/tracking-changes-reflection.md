# 1.5 Tracking Changes Reflection

## How does tracking and adding changes make developers' lives easier?

Tracking and adding changes allows developers to see progress and if needed go back to prior versions. It make for great documentation and understanding of creative flow.

## What is a commit?

Commits are snapshots of your code. They come after additions and before the push to Github.

## What are the best practices for commit messages?

The convention I read about was a 50 chars or less summary for par 1. A 72 char or less discription in par 2. And write them in the imparative. Honestly, detail seems like the best policy. The rest is secondary.

## What does the HEAD^ argument mean?

HEAD is the commit you are currenlty on. git reset HEAD will unstage the changes of that commit. Sometimes you have commited more than once before a push. HEAD-2 and HEAD-3 are the second and third commits respectivly. HEAD^ is the last commit.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?

First you have to create or modify a file. This should be done on a new branch so the master branch is left in tact. Once the file has been altered to the editors satisfaction, it needs to be added to the staging area using (git add). Lastly, the changes need to be committed using (git commit). Once the changes have occured in the local git repo, it is time to interact with Github.

## Write a handy cheatsheet of the commands you need to commit your changes?

Lets go further and write a cheatsheet for the whole git/Github process. We start in the command line in our local git repo.

1. :> git checkout master
2. :> git pull (update your local repo master branch with what is posted on Github)
3. :> git checkout -b branch_name (you want to make edits in a new branch)
4. Make your edits/additions.
5. :> git add file_name
6. :> git commit -m "commit notes" (this is the simplest way to record notes. You can use the -v flag to record commit notes in the actual file)
7. :> git push origin branch_name

We take a break from the command line and go to Github using the browser.

8. In Github, under the branch_name branch you will be able to create a pull request.
9. In Github you can merge your pull request to the master branch.

Now we can go back to the command line.

10. :> git checkout master
11. :> git pull origin master

This seams excessive when working alone but Github's true value will shine clear when collabroations start.

## What is a pull request and how do you create and merge one?

A pull request lets collaborators know that you have pushed a repo onto Github. It allows everyone to review and give feedback. If the changes are agreed upon, the pull request can be merged to the master branch or whatever branch is upstream on Github. This is done in pretty straightforward fashion on Github.

## Why are pull requests preferred when working with teams?

They are preferred becuase it is always important to have another set of eyes to look at your work even when it is a personal project. When it is a collaboration, feedback is even more important. There are always more than one way to do things.