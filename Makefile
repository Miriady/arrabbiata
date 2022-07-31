REQUIREMENTS?=requirements.txt
VIRTUALENV?=venv

.PHONY: autopep
autopep:
	python3 -m autopep8 --in-place --recursive --exclude="./${VIRTUALENV}/*" .

.PHONY: flake
flake:
	python3 -m flake8

.PHONY: freeze
freeze:
	python3 -m pip freeze > ${REQUIREMENTS}

.PHONY: mypy
mypy:
	python3 -m mypy .

.PHONY: test
test:
	python3 -m pytest .
