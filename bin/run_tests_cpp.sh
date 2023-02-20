export OUTPUT_PATH=output
if ! echo $1 | grep *.cpp > /dev/null
then
	echo Usage: r_tests_cpp *.cpp
	exit
fi

if g++ -std=c++14 $1 2> /dev/null
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
