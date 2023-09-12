FROM python:3.9

WORKDIR /app

COPY . /app/
COPY ./requirements.txt /app/

RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD ["flask", "--app", "backend.main", "run", "--host", "0.0.0.0"]