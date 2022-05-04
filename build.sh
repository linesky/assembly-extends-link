fbc -c maths.bas
if as $1 -o $1.o
then
	fbc maths.o $1.o
fi
