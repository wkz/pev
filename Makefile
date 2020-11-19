CC     ?= cc
RM     ?= rm -f

EXEC    = demo
OBJS    = demo.o

LIB	= libpev.a
LIBOBJS = pev.o
ARCHIVE = $(LIB)($(LIBOBJS))

all: $(EXEC) $(ARCHIVE)

$(EXEC): $(OBJS) $(ARCHIVE)
	$(CC) -o $@ $(OBJS) $(LIB) $(LDLIBS)

$(ARCHIVE): $(LIBOBJS)
	$(AR) $(ARFLAGS) $@ $(LIBOBJS)

clean:
	$(RM) *.o $(LIB) demo

distclean: clean
	$(RM) *~
