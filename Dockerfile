FROM tensorflow/tensorflow:latest

WORKDIR /app/

COPY main.py /app/
COPY requirements.txt /app/

RUN pip install --upgrade pip \
pip install -r /app/requirements.txt

ENTRYPOINT uvicorn main:app --host 0.0.0.0 --port 1205