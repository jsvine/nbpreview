# NBPreview

NBPreview is a [IPython](http://ipython.org/)/[Jupyter](http://jupyter.org/) notebook previewer. It does not require an internet connection, or even having IPython/Jupyter installed.

You can use [__this hosted version__](https://jsvine.github.io/nbpreview/) or `git clone` your own. Just drag-and-drop your `.ipynb` file onto the filepicker, and *voilà!*

## Running Your Own NBPreview

To run NBPreview on your own computer, clone or [download](archive/master.zip) this repository, and then open `index.html`.

Alternatively, you can run a local server by executing `python -m SimpleHTTPServer 8000` in the `nbpreview` directory, after which you can visit [http://localhost:8000](http://localhost:8000).

## Built on ...

- [notebookjs](https://github.com/jsvine/notebookjs), for notebook-rendering
- [prism](http://prismjs.com/), for code-highlighting
- [marked](https://github.com/chjj/marked), for markdown-rendering
- [ansi_up](https://github.com/drudru/ansi_up), for ANSI-rendering
- [katex](https://github.com/KaTeX/KaTeX), for math typesetting
- [es5-shim](https://github.com/es-shims/es5-shim), for JavaScript compatibility

## Contributing

Pull requests are welcome and appreciated.
