# foldertag

## About
A bash script to add tags to markdown files, useful for Obsidian folder-scope files tagging.

This bash script adds tags to all markdown files in a folder.
The tags are in the form of `#[TAGNAME]` and are added in the same line under the title header of each markdown file.
An indicator `tags:` is placed in front of the series of tags.

## Requirement
- bash shell
- sed (Stream Editor)

## Usage
- Open your terminal or command prompt
- Change the working directory to where the bash script is located by using the cd command
- Run the bash script by typing ./[script_name].sh and press enter
- When prompted, enter the path of the folder containing markdown files
- When prompted, enter the path of the text file containing the tags
- Wait for the script to finish processing and adding the tags to all markdown files in the folder
- Check the files in the folder to see if the tags have been added

*Note: If there are any error messages during the execution of the script, please double check if the folder directory and input file paths are correct.*
