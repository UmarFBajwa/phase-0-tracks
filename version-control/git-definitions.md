# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Code oftens changes. Bugs need to be fixed, features need to be added, and content changed. Most code is stored as plan old text files and code is changed by editing such. Every time a change is saved, the old bersion is overwritten with a new one. But no one is perfect. If a mistake is made then it would be helpful to go back to an old version or get a report as what change was made. This is very Version Control comes in. Version Control is a system that records changes to a file or set of files over time so that you can recall specific versions later.

* What is a branch and why would you use one?

A branch represents an independent line of development. You use it to encapsulate changes to make sure that unstable code is never commited to the main code base, and it gives you the chance to clean up your feature's history before merging it into the main branch.

* What is a commit? What makes a good commit message?

Commit is a save point in Git. A good commit message is detailed and states what wass changed since the last commit.

* What is a merge conflict?

A merge conflict is when there is an issue with merging. For example if two people edited the same lines of code in the same file, or if one person decided to delete it while the other person decided to modify it, Git simply does not know what is correct and you have a merge conflict.