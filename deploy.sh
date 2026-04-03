#!/bin/bash

cd /home/ubuntu/<your-repo>

git pull origin main

source venv/bin/activate

pip install -r requirements.txt

pkill gunicorn

nohup gunicorn app:app --bind 0.0.0.0:5001 &
