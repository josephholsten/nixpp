% E(1) nixpp | User Commands
% Joseph Holsten
% 2015-09-13

# NAME

e - select editor

## SYNOPSIS
`e` [*file*...]


## BUGS

This should only return after the file has been edited. At the moment, it trusts the underlying editor to do that.

## HISTORY

`E(1)` was originally a command in Plan 9 to edit a file, and return when the file was changed. This was recomended as the default value of EDITOR for use with commit hooks &c.
