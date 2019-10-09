## App

The app is a small flask app with one function in path `/`. Deployed on Docker `python:3.7-alpine`.

Url: https://github.com/ravenolf/soramitsu-test.git

Can be started locally:

```bash
# Dependancies
sudo apt install python3 python3-pip virtualenv -y

# Run
git clone https://github.com/ravenolf/soramitsu-test.git
cd soramitsu-test
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
FLASK_APP=app.py flask run
```

The server should be started on http://localhost:5000

To build the docker image:
```bash
git clone https://github.com/ravenolf/soramitsu-test.git
cd soramitsu-test
docker build -t webapp .
```

To start the docker image:
```bash
docker run --rm -p5000:5000 webapp
```