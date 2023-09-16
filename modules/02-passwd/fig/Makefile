.PHONY: all
all: password_reuse.png password_strength.png

password_reuse.png password_strength.png:
	curl -o $@ https://imgs.xkcd.com/comics/$@

.PHONY: clean
clean:
	rm -f password_reuse.png password_strength.png
