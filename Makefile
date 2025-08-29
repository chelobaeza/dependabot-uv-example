
sort-pip-files:
	ls requirements/*.in | xargs -I file sort file -o file

compile-pip-files:
	printf "%s\n" prod ci dev | xargs -I {} uv pip compile "requirements/{}.in" -o "requirements/{}.txt" --generate-hashes --no-strip-extras

install: sort-pip-files compile-pip-files
	uv pip sync requirements/dev.txt

test:
	dependabot update uv chelobaeza/dependabot-uv-example --local .
