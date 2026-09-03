from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return """
    <!DOCTYPE html>
    <html>
    <head><title>Hello World - Python</title></head>
    <body style="text-align: center; margin-top: 50px; font-family: sans-serif;">
        <h1>Hello World from Python (Flask) + Docker!</h1>
    </body>
    </html>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
