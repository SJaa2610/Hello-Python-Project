from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hi, I'm Sarahi. This is my Python project"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8080)  # Asegura que Flask escuche en 0.0.0.0 y en el puerto 8080
    