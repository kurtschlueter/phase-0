# Kurt's Week 1 Reflections

## 1.1 Think About Time Reflection

I have never really paid attention to time management. Instead, I have always focused on the importance of willpower. It is just about putting in the work. Three main factors allow me to do this: a good nights sleep, eating well, and exercising. I need all three every single day. The first two I need just to keep my energy up and running throughout the day. I am fighting an uphill battle from the start if I wake up tired. The exercising at the end of the day serves two main purposes for me. First, I need to shut my brain off for a couple of hours or so. Playing basketball or soccer is relatively mindless compared to learning. My mind does not wind down by itself at the end of the day. When I’m mentally exhausted, I just start going through loops about anything like a crazy person and will not be able to fall asleep. Second, I need my body to catch up to the energy level of my mind.

After reading these time management ideas, I realized that I have been employing some of them with out knowing. 1. Setting clear and reasonably sized goals. This is important because the feeling of progress is a great motivator. 2. Be challenged. Staying focused is already difficult enough without having to fight off boredom. If I am bored, my efficiency plummets off of a cliff. 3. Having a distraction free environment. This is pretty self explanatory.

One of my biggest flaws in life is the fear of failure. I do not care that others see me fail as much as I do not want to show my intellectual and physical limitations to myself. This has been relatively crippling to me throughout life and will be a primary focus of mine in Phase 0 and beyond. This flaw ties into the theory of time management because denial and fear of the truth directly impede efficiency.

“A timebox is a previously agreed period of time during which a person or a team works steadily towards completion of some goal.” At first glance I am not a fan of this technique. I like working against a problem not time. I could use this technique as some sort of scheduling device. I could see this being useful when I get stuck on a certain problem. Walking away for a bit when stuck is usually a good idea.

## 1.2 The Command Line Reflection

1. A shell is a user interface that allows the user to access the operating system. It is more commonly used to reference a text interface (command line interpreter) but it can also be a graphical user interface. Unix is an operating system that came out with the first command line shell called the Thompson Shell. The first six versions of this shell introduced basic features like some of the ones we learned in this video: piping ( | ), control flow ( > or < ), and wildcarding ( * * ). With version 7,Unix came out with the Bourne Shell. Over time, this shell evolved into many variants including the Bash Shell (Bourne Again Shell). The goal of bash was to give users complete control of their OS in order to allow for complete freedom and collaboration. Bash is part of a larger software collaboration called the GNU Project.

2. It is all challenging at first because the syntax is so foreign to me. This will come with practice of course. I want to learn all of the basic bash commands before I start taking shortcuts like pipping or redirections. This video can be a little intimidating because they jump from basic bash commands, to script programming, to bash shortcuts. One step at a time.

3. I was not successful in using wget. I will have to figure this out later but I need to move on for now.

4. They all have their use. I am not sure how to quantify their relative value. I used help and man a lot. It's nice getting aid from within the shell.

5. Off the top of my head: (pwd) Posts the current working directory. (ls) Lists what is in the current directory. (mv) Moves files and folders around. (cd) Current directory plus certain commands allows you o navigate through folders. (mkdir) Create a new directory/folder. (help) Provides documentation on certain commands and arguments.

I had to look up: (rm) Deletes files and folders. (rmdir) This removes directories only if they are empty. (touch) This creates new and empty files. (less) Pages through text one screenfull at a time. (./) This is needed to execute a program in the current directory. (../) This is needed to execute a program in the parent directory.

Comments after submission: cd = change directory not current. man is for mac, help is for pc. I also need some more practice with wildcard matching

## 1.4 Forking and Cloning Reflection

To create a repo on Github: Once signed in, click on the plus sign on the top right of the page then select new repository. Choose a name, make it public or private, and choose a license (MIT license for ex). These are open source licenses that can tell other what they can and cannot do with your code. In a nutshell, the MIT license lets others do whatever they want to your code as long as they give you credit.

To fork an existing repo on Github: Find the repo you want to copy to your profile and click on the fork icon also located top right. Pretty simple. Forking someones repo allows you to start from where they left off and make changes/additions without affecting their version.

To clone repos to your computer: To begin working on these repo that you have created or forked on Github, you have to first clone them onto you computer. Its pretty simple. Create a dir on your computer that you want to house these repos and in the command line type :

git clone https://git…

The last part is an HTTPS clone URL that can be found on the right hand side of the repo page you want to clone. Done and done.

From what I have read you can delete clones/local repos, edit locally, and push them to Github from the command line but you cannot clone repos from Github using the command line. That has to be done using the browser. I could be wrong.

No struggles in the setup. Pretty straight forward.