all: persona.exe

ffi.o: ffi.c ffi.h
	gcc -c -o $@ $<

persona.exe: persona.urs persona.urp persona.ur personaFfi.urs ffi.o ffi.urs
	urweb -dbms sqlite persona

