# Utiliza la imagen oficial de Python 3.10 slim
FROM python:3.10.12-slim
# Establece el directorio de trabajo en /app
WORKDIR /app
# Copia los archivos necesarios al contenedor
COPY . /app
# Instala las dependencias
RUN pip install --no-cache-dir -r req.txt
# Expone el puerto 8000 (puerto predeterminado para FastAPI)
EXPOSE 8000
# Comando para ejecutar la aplicación FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--workers", "5", "--port", "8000"]