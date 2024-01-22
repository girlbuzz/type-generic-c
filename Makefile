
OBJS=src/main.o src/addc.o src/adds.o src/addi.o src/addl.o src/addf.o src/addd.o

.PHONY: all clean
.SUFFIXES: .c .o

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

all: test

src/addc.o: src/add.c
	$(CC) $(CFLAGS) -DTYPE_T=char -DADD_F=addc -c -o $@ src/add.c

src/adds.o: src/add.c
	$(CC) $(CFLAGS) -DTYPE_T=short -DADD_F=adds -c -o $@ src/add.c

src/addi.o: src/add.c
	$(CC) $(CFLAGS) -DTYPE_T=int -DADD_F=addi -c -o $@ src/add.c

src/addl.o: src/add.c
	$(CC) $(CFLAGS) -DTYPE_T=long -DADD_F=addl -c -o $@ src/add.c

src/addf.o: src/add.c
	$(CC) $(CFLAGS) -DTYPE_T=float -DADD_F=addf -c -o $@ src/add.c

src/addd.o: src/add.c
	$(CC) $(CFLAGS) -DTYPE_T=double -DADD_F=addd -c -o $@ src/add.c

src/addld.o: src/add.c
	$(CC) $(CFLAGS) -DTYPE_T="long double" -DADD_F=addld -c -o $@ src/add.c

test: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

clean:
	rm -f $(OBJS) test
