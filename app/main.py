from config import settings
from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()


@app.get("/")
def root():
    return {"message": "Hello World"}


@app.get("/healthz")
def healthz():
    return JSONResponse(content={"version": settings.version})
