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
-   [`vi`](pubs.opengroup.org/onlinepubs/9699919799/utilities/vi.html) (POSIX)

From `map`:

-   [`parallel`](https://savannah.gnu.org/projects/parallel/):
-   [`xargs`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/xargs.html) (POSIX)

From `note`:

-   [`terminal-notifier`](https://github.com/julienXX/terminal-notifier)
-   [`growlnotifier`](http://growl.info/)
-   [`notify-send`](http://manpages.ubuntu.com/manpages/xenial/en/man1/notify-send.1.html)
-   [`echo`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/echo.html) (POSIX)

From `p`:

-   [`most`](http://www.jedsoft.org/most/)
-   [`lv`](https://github.com/ttdoda/lv)
-   [`less`](http://www.greenwoodsoftware.com/less/)
-   [`more`](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/more.html) (POSIX)

From `xp`:

-   [`xclip`](https://github.com/astrand/xclip)
-   [`pbcopy`](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/pbcopy.1.html)
