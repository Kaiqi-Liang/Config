export OUTPUT_PATH=output
if ! echo $1 | egrep .*.cpp > /dev/null
then
	echo Usage: run_tests_cpp *.cpp 20
	exit
fi

if ! echo $2 | egrep "^\d{2}$" > /dev/null
then
	echo Usage: run_tests_cpp *.cpp 20
	exit
fi

if g++ -std=c++$2 $1
then
	for input in tests/input[0-9][0-9][0-9].txt
	do
		echo Testing $input
		./a.out < $input > $OUTPUT_PATH
		output=`echo $input | sed 's/in/out/'`
		diff -w $OUTPUT_PATH $output
	done
	rm a.out
	rm output
fi
