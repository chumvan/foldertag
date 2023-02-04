# foldertag

## About
A bash script to add tags to markdown files, useful for Obsidian folder-scope files tagging.

This bash script adds tags to all markdown files in a folder.
The tags are in the form of #[TAGNAME] and are added in the same line under the title header of each markdown file.
An indicator `tags:` is placed in front of the series of tags.

## Requirement
- bash shell
- sed (Stream Editor)

## Usage
- Prepare a text file that contains the tags you want to add, with each tag on a separate line.
- Run the bash script and provide the text file and the directory of the folder containing the markdown files as inputs.
