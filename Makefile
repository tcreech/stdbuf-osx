STUFF := stdbuf libstdbuf.dylib

all:	$(STUFF)

stdbuf:	stdbuf.c

libstdbuf.dylib:	libstdbuf.c
	$(CC) -dynamiclib -undefined suppress -flat_namespace $< -o $@

clean:
	-rm -f $(STUFF)

