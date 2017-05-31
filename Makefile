CPPUTEST_HOME = ~/work/cpputest

CPPFLAGS += -I $(CPPUTEST_HOME)/include
LDFLAGS  += -L $(CPPUTEST_HOME)/lib 
LDLIBS   += -lCppUTest -lCppUTestExt -lstdc++

APP_NAME = TestFirst

OBJS = TestFirst.o \
	   Main.o

all: $(APP_NAME)
	./$(APP_NAME) -c

$(APP_NAME): $(OBJS)

clean:
	rm -f $(APP_NAME) $(OBJS)
