# latex2png

A short shell script to compile LaTeX sources to cropped PNG images.


## Usage

```shell
# one-shot mode:
./latex2png foo.tex

# or continuously regenerate the PNG images upon any changes to any .tex file
# in the current directory
./continuous-update.sh
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
