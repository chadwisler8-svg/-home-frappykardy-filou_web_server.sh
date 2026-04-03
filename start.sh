#!/bin/bash
python3 -m venv venv
source venv/bin/activate
pip install flask requests > /dev/null
python3 app.py &
sleep 2
echo -e "\033[1;32m[!] Serveur lancé sur le port 5000\033[0m"
ngrok http 5000
