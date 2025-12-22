from flask import Flask, request, abort
import os

app = Flask(__name__)

@app.route("/")
def home():
    return '''<center><h1>production server running</h1>
    Welcome Ambrose</center>
    '''
@app.route("/admin")
def admin():
    return "<h2>Administrator Page</h2>"

app.run(host="0.0.0.0", port=5000)
