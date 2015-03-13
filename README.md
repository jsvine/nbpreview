# NBPreview

NBPreview is a [IPython](http://ipython.org/)/[Jupyter](http://jupyter.org/) notebook previewer. It does not require an internet connection, or even having IPython/Jupyter installed.

You can use [__this hosted version__](https://jsvine.github.io/nbpreview/) or `git clone` your own. Just drag-and-drop your `.ipynb` file onto the filepicker, and *voilà!*

## Running Your Own NBPreview

To run NBPreview on your own computer, clone this repository:

```sh
git clone https://github.com/jsvine/nbpreview.git
```

... start a local server in the cloned directory:

```sh
cd nbpreview
python -m SimpleHTTPServer 8000
```

... and then open `http://localhost:8000` in your web browser.

## MathJax

NBPreview doesn't come packaged with support for MathJax (so that, by default NBPreview doesn't connect to any third-party servers), but it's easy to add. In `index.html`'s `<head>` tag, insert:

```html
<script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"></script>
<script type="text/x-mathjax-config">
MathJax.Hub.Config({
    tex2jax: {
        inlineMath: [ ['$','$'], ["\\(","\\)"] ],
        displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
        processEscapes: true,
        processEnvironments: true
    },
    displayAlign: 'center',
    "HTML-CSS": {
        styles: {'.MathJax_Display': {"margin": 0}},
        linebreaks: { automatic: true }
    }
});
</script>
```

## Built on ...

- [notebookjs](https://github.com/jsvine/notebookjs), for notebook-rendering
- [prism](http://prismjs.com/), for code-highlighting
- [marked](https://github.com/chjj/marked), for markdown-rendering
- [ansi_up](https://github.com/drudru/ansi_up), for ANSI-rendering
- [es5-shim](https://github.com/es-shims/es5-shim), for JavaScript compatibility

## Contributing

Pull requests are welcome and appreciated.
