default:

cdnjs=https://cdnjs.cloudflare.com/ajax/libs/

.PHONY: js/vendor css/vendor
js/vendor:
	curl -s $(cdnjs)es5-shim/4.5.14/es5-shim.min.js > $@/es5-shim.min.js
	curl -s $(cdnjs)marked/1.1.1/marked.min.js > $@/marked.min.js
	curl -s $(cdnjs)dompurify/2.0.15/purify.min.js > $@/purify.min.js
	curl -s $(cdnjs)prism/1.21.0/prism.min.js > $@/prism.min.js
	curl -s $(cdnjs)KaTeX/0.12.0/katex.min.js > $@/katex.min.js
	curl -s $(cdnjs)KaTeX/0.12.0/contrib/auto-render.min.js > $@/katex-auto-render.min.js

css/vendor:
	curl -s $(cdnjs)prism/1.21.0/themes/prism.min.css > $@/prism.css
	curl -s $(cdnjs)KaTeX/0.12.0/katex.min.css > $@/katex.min.css

vendor: js/vendor css/vendor
