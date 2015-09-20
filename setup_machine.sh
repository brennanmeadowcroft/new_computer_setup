#! /bin/bash

# If --help
	# echo "Usage: source setup_machine.sh [options]"
	# echo ""
	# echo "Available options:"
	# echo "--without-base     Does not run installation of core software including node, python, coreutils, etc..."
	# echo "--with-base"       Forces install of core software.  Basically the opposite of --without-base
	# echo "--data-science     Installs python modules necessary for data science related work (numpy, scikit-learn, etc..."
	# echo "--sublime-text     Adds sublime text settings for development (subl, settings files, etc...).  REQUIRES Sublime Text to be installed first!"

# else
	# If --without-base flag is not present (--without-base flag would keep this from running) or --with-base
		if eval "brew --help"; then
			echo "Homebrew detected"
		else
			echo "Homebrew not detected... installing now"
			# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		fi

		echo "Installing basic components"
		# brew install coreutils
		# brew install vim
		# brew install git
		# brew install tree
		# brew install watch
		# brew install docker-machine
		# brew install node
		# brew install python

		echo "Installing OSX Xcode Command Line Tools"
		# If command line tools not present:
			# Install
			# xcode-select --install
		# Else
			# echo "Tools already installed" 

		echo "Setting terminal profile"
		# cat .bash_profile > ~/.bash_profile

		echo "Setting global .gitignore"
	# fi

	# Run necessary installs associated with provided flags
	for i in $@ 
	do
		# If data-science params set... install necessary software
		case $i in --data-science)
			if eval "python -V"; then
				if pip -V; then
					# Install data science requirements
					pip install -U numpy scipy scikit-learn
				else
					echo "pip not detected... rerun this script using the --with-base option"
				fi
			else
				echo "Python not detected... rerun this script using the --with-base option"
			fi
		esac
		case $i in --sublime-text)
			# if sublime text installation directory is present; then
				# Git pull settings files from GitHub
				# set configurations
			# else 
				# echo "Sublime Text does not appear to be installed.  Install and then re-run this script"
			# fi
		esac
		case $i in --node-dev)
			if eval "npm -V"; then
				echo "Installing global packages for server development"
				npm install -g standard
				mkdir ~/node_projects
			else
				echo "NPM not detected... rerun this script using the --with-base option"
			fi
		esac
		case $i in --frontend-dev)
			if eval "npm -V"; then
				echo "Installing global packages for frontend development"
				npm install -g standard
				npm install -g yeoman
				npm install -g bower
			else
				echo "NPM not detected... rerun this script using the --with-base option"
			fi
		esac
	done
# fi
