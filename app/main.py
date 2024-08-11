from fastapi import FastAPI
from fastapi.responses import JSONResponse

from app.config import settings

app = FastAPI()


@app.get("/")
def root():
    return {"message": "Hello World"}


@app.get("/healthz")
def healthz():
    return JSONResponse(content={"version": settings.version})
