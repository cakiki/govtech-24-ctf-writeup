all: book html push

book:
	jupyter-book build .

html:
	mkdir -p docs
	cp -r _build/html/* docs/
	touch docs/.nojekyll

push:
	git add .
	git commit -m "New book version"
	git push