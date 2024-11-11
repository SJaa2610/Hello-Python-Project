# Usa una imagen base de Python para compilar y ejecutar la aplicación
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /code

# Copia el archivo de dependencias (requirements.txt) y las instala
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código fuente de la aplicación
COPY . .

# Expone el puerto 8080 si es una aplicación web Flask, FastAPI, etc. (puedes cambiarlo si usas otro puerto)
EXPOSE 8080

# Configura el comando de inicio de la aplicación
# Cambia 'app.py' al nombre de tu archivo principal
CMD ["python", "project.py"]
