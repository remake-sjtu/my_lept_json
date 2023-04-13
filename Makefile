target= leptjson_test
source_file=$(wildcard ./*.c)
objects_file=$(patsubst %.c, %.o, $(source_file))

$(target):$(objects_file)
	$(CC) $(objects_file) -o $@

%.o : %.c
	$(CC) -c $^ -o $@


.PHONY:clean

clean:
	rm $(objects_file) -f