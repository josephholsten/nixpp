% MAP(1) nixpp | User Commands
% Joseph Holsten
% 2015-09-13

# NAME
map - perform command accross items

## SYNOPSIS
    map [-ptx] [-E eofstr] [-I replstr] [-L max-lines] [-n max-args] [-s max-chars] [command [arg...]]

## DESCRIPTION
flags are limited to the minimum posix xargs(1) options.

-p              Echo each command and ask the whether to execute it.
-t              Echo each command to standard error before it is executed.
-x              Terminate immediately if the command will not fit in the command line length.
-E <eofstr>     Use <eofstr> as a logical EOF marker.
-I <replstr>    Replace occurrences of <replstr> with the entire line of input. Implies `-x`.
-L <max-lines>  Call utility for every number non-empty lines read.  A line ending with a space continues to the next non-empty line.  If EOF is reached and fewer lines have been read than number then utility will be called with the available lines. Overrides `-n`.
-n <max-args>   Limit the number of arguments taken from standard input for each invocation of utility. Overrides `-L`.
-s <max-chars>  Limit the number of bytes for the command line length provided to utility.
