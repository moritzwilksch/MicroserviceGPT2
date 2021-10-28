install:
	pip3 install --upgrade pip
	pip3 install -r requirements.txt

curl:
	curl -X POST -H "Content-Type: application/json" -d '{"input_str": "Hello, this is a test on"}' 127.0.0.1:1205

start-application:
	uvicorn main:app --host 0.0.0.0 --port 1205

docker-build:
	docker build -t microservicegpt2 .

docker-run:
	docker run --name gpt2_ms -d -p 1205:1205 microservicegpt2
