FROM python:3.7-alpine

RUN adduser -D flask
USER flask

WORKDIR /var/www/flaskapp

COPY --chown=flask:flask ./requirements.txt .
RUN pip install --user -r requirements.txt

COPY --chown=flask:flask . .

ENV PATH="/home/flask/.local/bin:${PATH}"
ENV FLASK_APP=app.py

EXPOSE 5000

ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]