from flask import Flask
from flask_sslify import SSLify

app = Flask(__name__)
sslify = SSLify(app)


@app.route("/")
def hello():
    return "Hello World"

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True, port=80)

