
# Make our own executable command in Linux 

### Cheatsheets

Cheat sheets are a quick reference guide that contains important information about a programming language, framework, or library. They can include syntax, functions, data structures, algorithms, and other useful tidbits.

## Problem
    - Many of us use Cheatsheets for quick reference 
    - But the Problem is I download the Cheatsheets in a particular folder 
    - Everytime we navigate to folder to get Cheatsheets this leads to distraction in many times 
    - So I want to find a way to find cheetsheets easily

## IDEA💡

1.So I write a bash script. That takes cheatsheet names as input and find the cheetsheet easily from the directory from the terminal

2.We access the command form anywhere in the terminal (Like Linux commands like pwd ,ls)

## How To Do:

Clone the project

```bash
  git clone https://github.com/Rajadurai2/Linux.git
```

Go to the project directory

```bash
  cd my-project
```

Copy your files to bin
```bash
  sudo cp cheetsheet.sh /usr/local/bin
```

Make your file executable 
```bash
   1.cd /usr/local/bin/
   2.chmod +x /path/to/cheetsheet.sh
```
Create a symlink to your script without the extension:
```bash
  sudo ln -s cheetsheet.sh /usr/local/bin/cheetsheet
```
Update Changes in ~/.bashrc file
```bash
  source ~/.bashrc
```

## Check our command

1.Just run **cheetsheet** from anywhere in the terminal
```bash
~$ cheetsheet 
# returns Enter Cheetsheet name correctly  (means it working)
```
Update Changes in ~/.bashrc file
```bash
  source ~/.bashrc
```