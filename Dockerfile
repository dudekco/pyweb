FROM python:3.8

RUN useradd -m appuser
RUN mkdir /app && chown appuser:appuser /app
WORKDIR /app
COPY . /app
RUN pip3 install pipenv

USER appuser
RUN pipenv install

CMD pipenv run python3 app.py
