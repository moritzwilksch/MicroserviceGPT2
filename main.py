from transformers import pipeline, set_seed
generator = pipeline('text-generation', model='gpt2')
set_seed(42)
from fastapi import FastAPI

app = FastAPI()

from pydantic import BaseModel


class InputBody(BaseModel):
    input_str: str
    max_len: int = 30

@app.post("/")
def read_root(input_body: InputBody):
    input_str = input_body.input_str

    return generator(input_str, max_length=input_body.max_len, num_return_sequences=1)[0]
