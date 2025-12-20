from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Production App Running"

@app.route("/admin")
def admin():
    return "Admin Panel"

app.run(host="0.0.0.0", port=5000)