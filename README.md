FLA-User-Manual
===============

User Manual for the Synercon Technologies Forensic Link Adapter and Smart Sensor Simulator.
This is an open repository for the content that is in the user manual. It can be seen by anyone on the internet. 
The purpose of this project is to provide useful information to users of the Synercon Technologies' Forensic Link Adapter and Smart Sensor Simulator.

If you would like to participate in editing or adding content, you can do so using LaTeX.

If there is just some small corrections, you can submit an issue on GitHub and a maintainer will address those.

Thank you.

## Requirements ##
To build the user manual, you will need latex. It is recommended to use the makefile.

## Building the manual ##
```Bash
make
```

To clean up the extra latex files:
```Bash
make clean
```

Do not run the makefiles inside the directories, to only build the manual:
```Bash
make user_manual
```

To only build the quick reference:
```Bash
make quick_reference
```

## Directory structure ##
All media needs to be placed in media_src as a png. If adding a new directory to this file, update the makefile to include it.
If changes are made to the media folders, simply delete the media/ directory and re-compile it using the makefile:
```Bash
make media
```
This is a dependancy of all, so no need to do this if you wish to compile the entire manual.

## Make all ##
when making all, the script will compile the media folder if it doesn't exist (does not check for new files automatically), compile the latex, then package file manuals into a .zip

