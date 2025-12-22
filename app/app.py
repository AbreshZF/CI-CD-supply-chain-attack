from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from production"

@app.route("/backdoor")
def backdoor():
    return "🔥 Production compromised via CI/CD"

@app.route("/secret")
def secret():
    return os.environ.get("APP_SECRET", "no secret")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
