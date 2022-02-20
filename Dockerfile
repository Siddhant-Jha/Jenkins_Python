FROM python:latest
COPY . /app
WORKDIR /app
RUN pip install flask
EXPOSE 8080
CMD python app.py