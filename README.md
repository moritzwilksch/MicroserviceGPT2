# MicroserviceGPT2
A dockerized Microservice to invoke a GPT2 model

## Environment Setup
**Create & Activate Virtual Environment**
```shell
python3 -m venv .env
source .env/bin/activate
```

**Install Dependencies**
```shell
make install
```

## Test the Service
**Use Test Query**
```shell
make curl
```

... or ...

**Use your Own!**
```shell
curl -X POST -H "Content-Type: application/json" -d '{"input_str": "YOUR INPUT HERE"}' IPADDRESS:1205
```


