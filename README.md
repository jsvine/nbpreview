# nbpreview

`nbpreview` is a [Jupyter](http://jupyter.org/)/[IPython](http://ipython.org/) notebook previewer. It does not require an internet connection, or even having Jupyter/IPython installed.

You can use [__this hosted version__](https://jsvine.github.io/nbpreview/) or `git clone` your own. Just drag-and-drop your `.ipynb` file onto the filepicker, and *voilà!*

## Local / Offline Usage

To run `nbpreview` on your own computer, clone or [download](archive/master.zip) this repository, and then open `index.html`.

Alternatively, you can run a local server by executing `python3 -m http.server 8000` in the `nbpreview` directory, after which you can visit [http://localhost:8000](http://localhost:8000).

## Built on ...

- [notebookjs](https://github.com/jsvine/notebookjs), for notebook-rendering
- [dompurify](https://github.com/cure53/DOMPurify), for HTML sanitization
- [prism](http://prismjs.com/), for code-highlighting
- [marked](https://github.com/chjj/marked), for markdown-rendering
- [ansi_up](https://github.com/drudru/ansi_up), for ANSI-rendering
- [katex](https://github.com/KaTeX/KaTeX), for math typesetting
- [es5-shim](https://github.com/es-shims/es5-shim), for JavaScript compatibility

## Contributing

Contributions are welcome. If you'd like to suggest a new feature, please open an issue to discuss the proposal before submitting a pull request.
