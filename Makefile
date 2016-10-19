CPPUTEST_HOME = ~/work/cpputest

CPPFLAGS += -I $(CPPUTEST_HOME)/include
LDLIBS   += -L $(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt
LDFLAGS  += -lstdc++ -lm

all: TestFirst
	./TestFirst

TestFirst: TestFirst.o Main.o

clean:
	rm TestFirst TestFirst.o Main.o
