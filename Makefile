.PHONY: setup test format lint

setup:
	python -m venv .venv && . .venv/bin/activate && pip install -U pip
	pip install -e .
	pip install pytest black isort mypy nbstripout
	nbstripout --install

test:
	pytest

format:
	black src tests && isort src tests

lint:
	black --check src tests
	isort --check-only src tests
	mypy src
