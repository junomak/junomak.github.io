all: README.md

README.md:
	echo '# Guessing Game Assignment\n' > README.md
	echo 'This makefile was run at: $(shell date +%Y-%m-%d:%H:%M:%S)\n' >> README.md
	echo 'The number of lines in guessinggame.sh is $(shell wc -l < guessinggame.sh)\n' >> README.md
    