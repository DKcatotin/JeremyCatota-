# Imagen base oficial de Python
FROM python:3.11-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar dependencias y código
COPY . /app

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto donde corre Gunicorn
EXPOSE 5000

# Comando por defecto para producción
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
