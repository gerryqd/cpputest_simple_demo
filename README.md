README
======

Just follows below document,

    https://www.odd-e.com/material/2009/JAOO_TDD_C_Tutorial/TDD_in_C_JAOO_tutorial.pdf

Some change points are,
----------------------

1. The original code cannot be built successfully on my machine.
  (debian8, GCC v4.9)

  Seems that `$(LDFALGS)` is not used at all. After searching on the internet, and found the solution.

  a. put lib used (not in `-l` or '-L` sytle) to `$(LDLIBS)`
  b. remove such kind of libs from `$(LDFLAGS)`

2. Modern CppUTest seems requires the math library, so, `-lm` is added to `$(LDFLAGS)`.


Update
======
!!!
Based on the document from https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html,

```
LDFLAGS
Extra flags to give to compilers when they are supposed to invoke the linker, ‘ld’, such as -L. Libraries (-lfoo) should be added to the LDLIBS variable instead.

LDLIBS
Library flags or names given to compilers when they are supposed to invoke the linker, ‘ld’. LOADLIBES is a deprecated (but still supported) alternative to LDLIBS. Non-library linker flags, such as -L, should go in the LDFLAGS variable.
```
