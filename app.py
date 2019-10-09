#!/usr/bin/python3
# Source https://stackoverflow.com/questions/10997577/python-timezone-conversion
from flask import Flask
from datetime import datetime
from pytz import timezone


app = Flask(__name__)
fmt = "%Y-%m-%d %H:%M:%S %Z%z"

@app.route('/')
def hello_world():
    now_time  = datetime.now(timezone('Europe/Moscow'))
    return f'Time in Moscow: {now_time.strftime(fmt)}'