# Text Compiler: `pandoc`

To convert from Markdown to our various outputs, we use
[`pandoc`](https://pandoc.org/). Several scripts in this repository will
create the proper command-line arguments to this tool.

## macOS

To install `pandoc` on macOS, first install [Homebrew](https://brew.sh/)
and then run:

```
brew install pandoc
```

# Editor: Visual Studio Code (VS Code)

## Extension: Rewrap

The Rewrap extension allows inserting hard wraps into your paragraphs at
the configured text wrap setting. Use `ALT+Q` to hard-wrap a paragraph.

Using hard wraps helps during side-by-side review of changes. Sometimes
the word wrapping causes a small change to modify the entire paragraph,
but very long lines are generally harder to review.
