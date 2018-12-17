Vim use the option `fileformat` to handle the different usage of `line end` and `carriage return` among different OSes.

Usually this option will be set automatically by Vim when opening a file. But the auto-detection could sometimes go wrong. Or sometimes you simple want to write a new file using the new-line fashion of other OS. Or you open an existing file with its default fileformat but want to convert to another.

The logic in Vim handling this new-line inconsistency is that: the user shouldn’t care about how a new line is implemented – a new line in Vim is what it is in the perspective of the user. Vim will implement a new line as `\n` on `*nix`, or `\r\n` on Windows, or `\r` on Mac OS, according to the value of fileformat.

[ This wiki page ][0] contains a detailed instruction on how to deal with various scenarios.

### fileformat and fileformats
- `fileformat` is local to each buffer, and is a single value
- `fileformats` is global, and
	1. is a sequence of formats
	2. specifies which file formats will be tried when Vim reads a file
	3. the first format in the sequence is used as the default for a new buffer

### Show current fileformat & fileformats
```
:set ff? ffs?
```

### Show where fileformat & fileformats are last set
```
:verbose set ff? ffs?
```

*if this reports that `ffs` is set from .vimrc, chances are that the `set nocompatible` in turns set many other options*

### Reopen a file with specified fileformat
```
:e ++ff=<fileformat>
```

[0]: http://vim.wikia.com/wiki/File_format
