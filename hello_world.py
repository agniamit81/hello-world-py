# hello_world.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Amit Agnihotri - Welcome to Jenkins CICD World! Happy Learning'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
