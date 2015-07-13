#!/usr/bin/make

build: tox lint

tox:
/usr/bin/tox:
	sudo apt-get install -y  python-tox python-dev python-virtualenv

lint: /usr/bin/tox
	tox

clean:
	@rm -rf .venv
	@rm -rf .tox
	@find -name *.pyc -delete
