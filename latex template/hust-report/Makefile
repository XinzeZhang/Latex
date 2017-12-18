# OS detected
ifeq ($(OS),Windows_NT)
	ifneq ($(findstring .exe,$(SHELL)),)
    OS_TYPE := Windows
	else
    OS_TYPE := Cygwin
	endif
else
    OS_TYPE := $(shell uname -s)
endif

all:unpack example doc
example:example-zh example-en

unpack:FORCE
	make -C ./hustreport unpack

example-zh ./hustreport/hustreport-zh-example.pdf:
	make -C ./hustreport example-zh

example-en ./hustreport/hustreport-en-example.pdf:
	make -C ./hustreport example-en

doc ./hustreport/hustreport.pdf:
	make -C ./hustreport doc

clean:
	make -C ./hustreport clean

reallyclean:
	make -C ./hustreport reallyclean

install:unpack ./hustreport/hustreport-zh-example.pdf ./hustreport/hustreport-en-example.pdf ./hustreport/hustreport.pdf
ifeq ($(OS_TYPE),Windows)
	./install/win32.bat install
else
	./install/unix.sh install
endif

uninstall:
ifeq ($(OS_TYPE),Windows)
	./install/win32.bat uninstall
else
	./install/unix.sh uninstall
endif

checksum:FORCE
	make -C ./hustreport checksum

FORCE:
.PHONY:all unpack example example-zh example-en doc install uninstall clean reallyclean checksum FORCE
