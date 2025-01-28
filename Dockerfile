FROM python:3.10

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Configurações do Flask
ENV FLASK_APP=app.app
ENV FLASK_ENV=development

EXPOSE 5000

# Comando para rodar o Flask
CMD ["flask", "run", "--host=0.0.0.0"]