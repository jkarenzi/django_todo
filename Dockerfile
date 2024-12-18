FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
EXPOSE 3000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "ToDoApp.wsgi:application"]