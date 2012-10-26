default: dmtest

double_metaphone.o: double_metaphone.cc
	g++ double_metaphone.cc -c -g -o double_metaphone.o -Wall -Werror

dmtest: dmtest.cc double_metaphone.o 
	g++ dmtest.cc -c -g -o dmtest.o -Wall -Werror
	g++ dmtest.o double_metaphone.o -g -lstdc++ -o dmtest

clean:
	rm dmtest dmtest.o double_metaphone.o 