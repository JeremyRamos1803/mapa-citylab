# Imagen
FROM python:3.10-slim
# Directorio de trabajo en el contenedor
WORKDIR /app
# Copiar requirements para instalar las dependencias
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
# Copiar el resto del codigo en la aplicacion
COPY . /app/
# Copiar los archivos estaticos
#COPY ./static /app/static
# Puertos
EXPOSE 5353
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5353","--reload"]