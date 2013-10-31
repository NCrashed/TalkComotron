TalkComotron
============

Programm connecting two PCs with serial port is providing message passing, talk history save/load and robust 
frame restoring system with cyclic code.

This programm has no practic purpose, it is being created as BMSTU educational task. Although project can be treated as 
test-case (and example) for GtkD, serial-port packages.

Compilation
===========

```
dub install talk-comotron --local
cd talk-comotron
dub
```

If you have Win32 platform there are linker bug with GtkD, to avoid this:
```
dub install talk-comotron --local
cd talk-comotron
dub --build=plain
```
