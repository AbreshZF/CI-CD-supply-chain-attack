from flask import Flask, request, abort
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "production server running"

app.run(host="0.0.0.0", port=5000)
