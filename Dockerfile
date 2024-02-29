FROM python:3.10

COPY . /app/
WORKDIR /app

RUN pip install pipenv
RUN pipenv install

ENTRYPOINT ["pipenv", "run"]

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
