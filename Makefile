install:
	pip install -r requirements.txt

curl:
	curl -X POST -H "Content-Type: application/json" -d '{"input_str": "Hello, this is a test on "}' 127.0.0.1:8000