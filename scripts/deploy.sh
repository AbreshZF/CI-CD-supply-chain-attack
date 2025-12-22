#!/bin/bash

echo "[+] Deploying to production..."

mkdir -p prod
cp app/app.py prod/app.py

echo "[+] Deployment complete"