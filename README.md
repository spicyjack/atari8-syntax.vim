# Atari 8-Bit VIM Syntax Files #

This is a collection of VIM syntax highlighting plugins for editing files that
run on Atari 8-bit computers, or emulation programs that emulate Atari 8-bit
computers, such as Altirra, atari800, or Atari800MacX.  You would use these
plugins with VIM to edit files on your "modern" computer, then move/copy those
files to your hardware/virtual 8-bit Atari in order to do things with them.

This VIM plugin is licensed under the Apache License, version 2; see the file
`LICENSE` in the top level of this repository for more info.

What syntax highlighting plugins are available in this repo?

* Action!
* SpartaDOS X

What syntax highlighting plugins are not available in this repo yet, but may
be at some point in the future?

* FastBasic
* TurboBasicXL

## Action! ##
The Action! programming language originally released by Optimized Systems
Software/ICD/FtE.

You can find out more info on the Action! programming language on
[Wikipedia](https://en.wikipedia.org/wiki/Action%21_%28programming_language%29)

You can use `:set filetype=action` when the file is open to enable syntax
highlighting.

To use this syntax highlighting file automatically every time you load up an
Action! source file, add `;vim: filetype=action` to the top 3 or bottom 3
lines of your Action! source code file(s), within `modeline` lines of the
beginning or end of the file respectively.  The next time you load the file in
VIM, VIM will apply syntax highlighting to the file.

## SpartaDOS X ##
SpartaDOS X (SDX) is a cartridge-based DOS for Atari 8-bit computers.

You can find out more info on SpartaDOS X on
[Wikipedia](https://en.wikipedia.org/wiki/SpartaDOS_X).

To enable syntax highlighting in Scan use `:set filetype=sdxbat` when the file is open to enable syntax
highlighting.

To use this syntax highlighting file automatically every time you load up a
SpartaDOS X batch file into VIM, add `; vim: filetype=sdxbat` at the top or
bottom of your file(s), within `modeline` lines of the beginning or end of the
file respectively.  The next time you load the file in VIM, VIM will apply
syntax highlighting to the file.


