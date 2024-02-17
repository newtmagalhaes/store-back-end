FROM python:3.10.13-alpine3.19

WORKDIR /application

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY /app .

ENTRYPOINT [ "gunicorn", "app:create_app" ]
# CMD [ "flask", "run" ]
