.PHONY: start-preview
start-preview:
	quarto preview

.PHONY: render-publish
render-publish:
	quarto render
	git add .
	git commit -m "new rendering"
	git push
