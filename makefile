all: README.md

README.md:
	touch README.md
	echo "# Guessing Game - Coursera by Alexandre Cadima" >> README.md
	echo "\n File generated: " >> README.md
	date >> README.md
	echo "\nThe number of lines of guessinggame.sh is: " >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md