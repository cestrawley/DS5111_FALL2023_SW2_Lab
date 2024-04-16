default:
	@cat makefile

env:
	sudo python3 -m venv env
	source env/bin/activate && pip install -r requirements.txt

run:
	@env/bin/python bin/clockdeco_param.py

.PHONY: tests

tests:
	pytest -vv tests

