#!/usr/bin/make

build: virtualenv lint

virtualenv: .venv/bin/python
.venv/bin/python:
	sudo apt-get install python-virtualenv
	virtualenv .venv
	.venv/bin/pip install nose flake8 mock pyyaml

lint:
	@.venv/bin/flake8 hooks unit_tests
	@charm proof

clean:
	rm -rf .venv
	find -name *.pyc -delete
