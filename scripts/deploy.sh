#!/bin/bash

echo "[+] Deploying to production..."

mkdir -p /tmp/prod
cp app.py /tmp/prod/app.py

echo "[+] Deployment complete"