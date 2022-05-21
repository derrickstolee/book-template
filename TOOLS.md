# Preliminary tools

## macOS

Many of the installation instructions below require
[Homebrew](https://brew.sh/), so install that before doing any other
steps.

# Text Compiler: `pandoc`

To convert from Markdown to our various outputs, we use
[`pandoc`](https://pandoc.org/). Several scripts in this repository will
create the proper command-line arguments to this tool.

## macOS

To install `pandoc` on macOS, run:

```
brew install pandoc
```

## Ubuntu

To install `pandoc` on Ubuntu, run:

```
sudo apt install pandoc
```

# Typesetting tool: `pdflatex`

Then building the PDF version of the book, you will need `pdflatex`.

## macOS

Install `pdflatex` by running:

```
brew install basictex
```

## Ubuntu

To install `pdflatex` on Ubuntu, run:

```
sudo apt-get install texlive
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-fonts-extra
sudo apt-get install texlive-latex-extra
```

# Editor: Visual Studio Code (VS Code)

## Extension: Rewrap

The Rewrap extension allows inserting hard wraps into your paragraphs at
the configured text wrap setting. Use `ALT+Q` to hard-wrap a paragraph.

Using hard wraps helps during side-by-side review of changes. Sometimes
the word wrapping causes a small change to modify the entire paragraph,
but very long lines are generally harder to review.
