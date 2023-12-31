FROM python:3.10-alpine

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["flask", "--app", "hellosprint",  "run", "--host", "0.0.0.0", "--port",  "5000"]
