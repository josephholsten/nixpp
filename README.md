# nix++

shorthands to improved commands, usually with a fallback to a posix
implementation.

## Optional Dependencies

nixpp commands will almost always support a posix implementation, but
will take advantage of the following tools if available:

From `b`:

-   [`neovim`](https://neovim.io/)
-   `acme`
-   `sam`
-   [`vim`](http://www.vim.org/)
-   [`vi`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/vi.html) (POSIX)

From `map`:

-   [`parallel`](https://savannah.gnu.org/projects/parallel/):
-   [`xargs`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/xargs.html) (POSIX)

From `note`:

-   [`terminal-notifier`](https://github.com/julienXX/terminal-notifier)
-   [`growlnotifier`](http://growl.info/)
-   [`notify-send`](http://manpages.ubuntu.com/manpages/xenial/en/man1/notify-send.1.html)
-   [`echo`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/echo.html) (POSIX)

From `p`:

-   [`less`](http://www.greenwoodsoftware.com/less/)
-   [`more`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/more.html) (POSIX)

From `g`:

-   [`rg`](https://github.com/BurntSushi/ripgrep)
-   [`pt`](https://github.com/monochromegane/the_platinum_searcher)
-   [`ag`](https://geoff.greer.fm/ag/)
-   [`sift`](https://sift-tool.org/)
-   [`ack`](https://beyondgrep.com/)
-   `grep -R` ([GNU](https://www.gnu.org/software/grep/) & [BSD](https://github.com/howardjp/freegrep)) ([POSIX `grep`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/grep.html) does not provide `-r`)

## Related Projects

-   [`unp`](https://packages.debian.org/buster/unp) wraps various archive tools to unpack things easily.
