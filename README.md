# new_computer_setup
A bash script to setup a new computer, specifically a Mac.


## Running The Script
After cloning the repo, navigate to the file location in the terminal and run: `./setup_script.sh` to install base software on the new machine.  Additional packages require flags (see below). 


#### Base software
Not including flags will only install base software and settings:

* Homebrew
* .bash_profile


## Using Flags
Flags can be used to install for specific use cases such as data science work or front-end development.  By default, these are not installed.  Install with `./setup_script.sh --data-science`.

Available options are:

|Flag          |Description                                                               |
|--------------|--------------------------------------------------------------------------|
|`data-science`|Include software related to data science projects, mostly python packages.|
|`frontend-dev`|Include software to assist frontend development such as Grunt and Yeoman  |
|`backend-dev` |Include software to assist backend development such as Node               |
|`with-base`   |Forces installation of base software                                      |
|`without-base`|Runs the script but ignores installing the base software                  |


## Help
A quick reference is accessible via command line: `./setup_script.sh --help`


## TODO:
1. Finish switch statement to work with flags
2. Support for --help flag
3. Support for --without-base flag
4. Add check for Sublime Text installation and add config files to Sublime
5. XCode Command Line Tools check and install
6. Support for --all-uses flag including moving specific use cases into separate functions.
