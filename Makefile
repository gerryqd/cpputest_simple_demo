CPPUTEST_HOME = ~/work/cpputest

CPPFLAGS += -I $(CPPUTEST_HOME)/include
LDLIBS   += $(CPPUTEST_HOME)/lib/libCppUTest.a $(CPPUTEST_HOME)/lib/libCppUTestExt.a
LDFLAGS  += -lstdc++ -lm

all: TestFirst
	./TestFirst

TestFirst: TestFirst.o Main.o

clean:
	rm TestFirst TestFirst.o Main.o
