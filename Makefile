all: book html push

book:
	rm -r docs
	rm -r _build
	jupyter-book build .

html:
	mkdir docs
	cp -r _build/html/* docs/
	touch docs/.nojekyll

push:
	git add .
	git commit -m "New book version"
	git push