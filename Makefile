CPPUTEST_HOME = ~/work/cpputest

CPPFLAGS += -I $(CPPUTEST_HOME)/include
LDFLAGS  += -L $(CPPUTEST_HOME)/lib 
LDLIBS   += -lCppUTest -lCppUTestExt -lstdc++ -lm

all: TestFirst
	./TestFirst -c

TestFirst: TestFirst.o Main.o

clean:
	rm -f TestFirst TestFirst.o Main.o
