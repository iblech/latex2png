# latex2png

A short shell script to compile LaTeX sources to cropped PNG images.


## Usage

```shell
# one-shot mode:
latex2png foo.tex

# or continuously regenerate the PNG images upon any changes to any .tex file
# in directory foo/
latex2png foo
```

The LaTeX source files can either be normal source files containing a proper
header, or alternatively just contain a single block of commands (which are
then rendered in a math environment).


## Dependencies

* `pdflatex`, `pdfcrop`, and `pdftoppm`. These programs are usually contained
  in packages with names like `texlive-latex-base`, `texlive-extra-utils`, and
  `poppler-utils`, respectively.
* Optionally `inotifywait` from a package like `inotify-tools`.


## Security considerations

Don't run `latex2png` on untrusted files.


## License

To the extent that this shell script exceeds a basic threshold of originality,
it is dual-licensed, meaning that you can (and are invited to) use,
redistribute and modify it under the terms of either:

1. The GNU General Public License (GPL), version 3 or (at your option) any
   later version published by the Free Software Foundation.
2. The LaTeX Project Public License (LPPL), version 1.3c or (at your option)
   any later version published by the LaTeX3 project.
