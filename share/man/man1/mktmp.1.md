% MKTMP(1) nixpp | User Commands
% Joseph Holsten
% 2015-09-13

# NAME

mktmp -- make temporary file

## SYNOPSIS

`mktmp` [*template*]

## DESCRIPTION

By default, `mktemp` will create a temporary file in TMPDIR starting
with `tmp.` followed by ten characters, guaranteeing a unique file.
The file is created with mode `0600` and the filename is printed to
standard out.

If a template is provided, the file will begin with it instead of
`tmp`. Unlike `mktemp(1)`, the template does not need to contain any
`X` characters.

If an error occurs, a message will be printed to standard error and
`mktmp` will return a non-zero exit code.

## EXAMPLES

You'll almost always be satisfied with the following:

    PROGRAM=$(basename $0)
    TMPFILE=$(mktmp $PROGRAM) || exit 1

## HISTORY

The related `mktemp(1)` was originally created on OpenBSD 2.1. This
script is equivalent to idiomatic usage on the following platforms:

FreeBSD, Darwin:
    mktemp -t "${1:-tmp}" # -t: generate template from prefix
OpenBSD, GNU, Illumos:
    mktemp -t "\${1:-tmp}.XXXXXXXXXX" " -t: use TMPDIR
HP-UX: (unsupported)
    mktemp -cp "\${1:-tmp}"
