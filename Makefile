.PHONY: start-preview
start-preview:
	quarto preview

.PHONY: preview
preview:
	export QUARTO_PYTHON=./posts/.venv/bin/python
	quarto preview

.PHONY: render-publish
render-publish:
	export QUARTO_PYTHON=./posts/.venv/bin/python
	quarto render
	git add .
	git commit -m "new rendering"
	git push
