MAN_FILES=\
	man/man1/STDERR.1 \
	man/man1/b.1 \
	man/man1/beep.1 \
	man/man1/e.1 \
	man/man1/g.1 \
	man/man1/jdate.1 \
	man/man1/l..1 \
	man/man1/ll.1 \
	man/man1/ls.1 \
	man/man1/map.1 \
	man/man1/mktmp.1 \
	man/man1/mktmpdir.1 \

.SUFFIXES: .1.html .1.md .1


PANDOC=pandoc
PANDOCFLAGS=

.1.md.1:
	$(PANDOC) $(PANDOCFLAGS) -f markdown $< -t man -s -o $@

man: $(MAN_FILES)

clean:
	rm -f $(MAN_FILES)
