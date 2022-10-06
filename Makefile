default:

cdnjs=https://cdnjs.cloudflare.com/ajax/libs/

.PHONY: js/vendor css/vendor
js/vendor:
	curl -s $(cdnjs)es5-shim/4.5.14/es5-shim.min.js > $@/es5-shim.min.js
	curl -s $(cdnjs)marked/4.1.1/marked.min.js > $@/marked.min.js
	curl -s $(cdnjs)dompurify/2.4.0/purify.min.js > $@/purify.min.js
	curl -s $(cdnjs)KaTeX/0.12.0/katex.min.js > $@/katex.min.js
	curl -s $(cdnjs)KaTeX/0.12.0/contrib/auto-render.min.js > $@/katex-auto-render.min.js
	@echo "💫 Manually download prism.min.js from 'https://prismjs.com/download.html#themes=prism&languages=markup+clike+javascript+julia+python+r'"

css/vendor:
	curl -s $(cdnjs)KaTeX/0.12.0/katex.min.css > $@/katex.min.css
	curl -sL https://github.com/KaTeX/katex-fonts/archive/master.zip > katex-fonts.zip
	rm -rf $@/fonts
	unzip -j katex-fonts.zip "katex-fonts-master/fonts/*" -d $@/fonts
	rm -f katex-fonts.zip
	@echo "💫 Manually download prism.css from 'https://prismjs.com/download.html#themes=prism&languages=markup+clike+javascript+julia+python+r'"

vendor: js/vendor css/vendor
