install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	pip3 install pylint
	pylint --disable=R,C hello.py
test:
	# pip install -U pytest
	pip install pytest-cov
	python -m pytest -vv --cov=hello test_hello.py