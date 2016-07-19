% F(1) nixpp | User Commands
% Joseph Holsten
% 2015-09-13

# NAME
f - find all files in the current directory

## SYNOPSIS
    f [file...]

## DESCRIPTION
`f` lists all files in the specified files, or defaults to the
current directory.  Most of the time, `f` exists to replace a simple
`find .`, often to pipe to `xargs(1)`. If anything more advanced is
needed, full `find(1)` is usually preferred.

## HISTORY
Plan 9 removed `find(1)` and recommended folks simply use `du -a | sed 's/^.*        //'` to
list files and handle each file seperately. This utility takes the idea to its spiritual completion.

