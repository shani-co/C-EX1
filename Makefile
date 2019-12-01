CC = gcc
AR = ar
OBJECTS_MAIN = main.o
OBJECTS_LIB = power.o basicMath.o
FLAGS = -Wall -g

all: mymaths mymathd mains maind 
mains: mymaths $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a 
maind: $(OBJECTS_MAIN) mymathd
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
mymaths: libmyMath.a
mymathd: libmyMath.so
libmyMath.so: $(OBJECTS_LIB)
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)
libmyMath.a: $(OBJECTS_LIB)
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB)  
power.o: power.c myMath.h
	$(CC) $(FLAGS) -fPIC -c power.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c

.PHONY: clean mains maind mymaths mymathd

clean:
	rm -f *.o *.a *.so mains maind
