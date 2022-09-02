DIRS=${wildcard *}

all:
	@for i in ${DIRS};                  \
	 do                                 \
	     if [ -f $${i}/Makefile ];      \
	     then                           \
	         make -C $${i} all || exit $$?; \
	     fi;                            \
	 done

clean:
	@for i in ${DIRS};                  \
	 do                                 \
	     if [ -f $${i}/Makefile ];      \
	     then                           \
	         make -C $${i} clean;       \
	     fi;                            \
	 done

.PHONY: all