FROM python:3.11

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY requirements.txt .
COPY templates/index.html templates/
COPY api.py .
COPY modelo.py .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 8080 en el contenedor
EXPOSE 8080

# Define el comando para ejecutar la aplicación
CMD ["python", "api.py"]