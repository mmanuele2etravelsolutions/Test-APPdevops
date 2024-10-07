from fastapi import FastAPI
app = FastAPI()

@app.get("/elb-status")
async def health():
    return {"status": "up"}

@app.get("/")
async def read_root():
    return {"Hola": "Mundo"}

@app.get("/items/{item_id}")
async def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}

@app.get("/hola")
async def saludo():
    return {"status": "UP"}
