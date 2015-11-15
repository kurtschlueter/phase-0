# 1.6 My Website pt 1 Reflection

## Paste a link to your [USERNAME].github.io repository.

http://kurtschlueter.github.io/

## Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.

To create a repo on Github: Once signed in, click on the plus sign on the top right of the page then select new repository. Choose a name, make it public or private, and choose a license (MIT license for ex). These are open source licenses that can tell other what they can and cannot do with your code. In a nutshell, the MIT license lets others do whatever they want to your code as long as they give you credit. To create a website repo you have to save the same as name.github.io.

To clone repos to your computer: To begin working on these repo that you have created or forked on Github, you have to first clone them onto you computer. Its pretty simple. Create a dir on your computer that you want to house these repos and in the command line type :

git clone https://git…

The last part is an HTTPS clone URL that can be found on the right hand side of the repo page you want to clone. Done and done.

## Describe what open source means.

Open source allows others to see the source code responsible for running a program and use it (share, modify, customize) in any way they see fit. Licensing becomes very inportant when it comes to open source.

## What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?

It all really depends on what kind of work you are doing. If I am writing apps/ developing programs for a living, Open Source would make me very nervous. It would be foolish to trust people to abide by the liscencing regulations put forth. However, I think everyone benefits from choosing Open Source for experimenting and learning. My opinion on this issue is useless since I am speaking without any experience. I will be better abled to answer this in the future.

## Assess the importance of using licenses.

Again, it is hard for me to comment on this with zero experience. It seems to me that the value of licenses really depend on the honesty of the community. Here is what I read from the provided links: Licenses do not give away the original programmers rights. That person gets the original copyright. A license just grants certain permissions for others to use that work.

What matters in a license:
1. Copyleft - What happens to the derivatives?
2. Commercial - Can others make money?
3. Reciprocity - Must share improvements?

## What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?

The more practice with git the better.

I did have a big aha moment. I was puzzled by the fact that when I made edits to a file in a temporary branch, those changes showed in the master branch even though I had not invoked a merge command. As it turns out, I wans't clear on the concept of my working directory vs the git directory. When you edit files in your working directory, you are not editing git files. Only committed files exist in git directory. Without committing, you are not editing in either master nor test branch, you are just editing locally. Once you commit in the test branch, you will see that those changes DO NOT appear in the master branch.

## Did you find any resources on your own that helped you better understand a topic? If so, please list it.

I have been searching for answers on stackoverflow this entire week. Since all my questions are at the beginners level, stackoverflow usually has the answer.