export OUTPUT_PATH=output
for input in tests/input[0-9][0-9][0-9].txt
do
	echo Testing $input
	cargo r < $input 2> /dev/null
	output=`echo $input | sed 's/in/out/'`
	diff -w $OUTPUT_PATH $output
done
rm output
