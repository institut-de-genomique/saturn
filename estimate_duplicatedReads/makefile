OBJLIBS = ../libfastx/libfastx.a
 
all : fastx_estimate_duplicatedReads

fastx_estimate_duplicatedReads : fastx_estimate_duplicatedReads.cpp .deps/fastx_estimate_duplicatedReads.Po $(OBJLIBS)
	if g++ -DHAVE_CONFIG_H -I. -I. -I../..   -I../libfastx   -g -O2 -Wall -Wextra -Wformat-nonliteral -Wformat-security -Wswitch-default -Wswitch-enum -Wunused-parameter -Wfloat-equal -DDEBUG -g -O1 -DDEBUG -g -O1 -MT fastx_estimate_duplicatedReads.o -MD -MP -MF ".deps/fastx_estimate_duplicatedReads.Tpo" -c -o fastx_estimate_duplicatedReads.o fastx_estimate_duplicatedReads.cpp; \
	then mv -f ".deps/fastx_estimate_duplicatedReads.Tpo" ".deps/fastx_estimate_duplicatedReads.Po"; else rm -f ".deps/fastx_estimate_duplicatedReads.Tpo"; exit 1; fi; \
	g++  -g -O2 -Wall -Wextra -Wformat-nonliteral -Wformat-security -Wswitch-default -Wswitch-enum -Wunused-parameter -Wfloat-equal -DDEBUG -g -O1 -DDEBUG -g -O1   -o fastx_estimate_duplicatedReads  fastx_estimate_duplicatedReads.o ../libfastx/libfastx.a

install :
	cp -f fastx_estimate_duplicatedReads ..

clean :
	rm -f fastx_estimate_duplicatedReads fastx_estimate_duplicatedReads.o
