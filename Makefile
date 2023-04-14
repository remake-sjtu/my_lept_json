target= leptjson_test
source_file=$(wildcard ./*.c)
objects_file=$(patsubst %.c, %.o, $(source_file))

$(target):$(objects_file)
	$(CC) $(objects_file) -o $@ 

%.o : %.c
	$(CC) -c $^ -o $@ -g


.PHONY:clean

clean:
	rm $(objects_file) -f



.PHONY:clean_all
	
clean_all:
	rm $(target) -f
	rm $(objects_file) -f

