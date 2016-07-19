% G(1) nixpp | User Commands
% Joseph Holsten
% 2015-09-13

g -  improved grep -n selector

## SYNOPSIS
    g <re> [file...]

## DESCRIPTION

-c count
-i insensitive
-s Suppress error messages about nonexistent or unreadable files.
-v invert match

## HISTORY

russ cox wrote g as a shell script in plan9port. this uses ack, ag, pt or falls back to it.
