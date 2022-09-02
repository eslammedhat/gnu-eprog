DIRS= 01_Hello_ARM \
      02_More_Assembler_Directives \
      03_Linker \
      04_Linker_Script \
      05_Data_In_Ram \
      06_Exceptions \
      07_C_Startup

all:
	@for i in ${DIRS};                      \
	 do                                     \
	     if [ -f $${i}/Makefile ];          \
	     then                               \
	         make -C $${i} all || exit $$?; \
	     fi;                                \
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