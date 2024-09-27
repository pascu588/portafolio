# usa una imagen base de python
FROM python:3.10-slim

# establece el directorio de trabajo
WORKDIR /app

COPY requeriments.txt requeriments.txt
#install las dependecias
RUN pip install --no-cache-dir -r requeriments.txt

COPY . . 

#copia el resto de la aplicacion


#Expone el puerto en el que corre la app


ENV FLASK_APP=holamundoflask.py

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000
#comando para ejecutar la aplicacion
CMD ["flask","run"]