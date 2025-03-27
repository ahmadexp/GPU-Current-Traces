#! /bin/bash

nohup ./ttylog.sh logs/deepseek.csv &

ollama run deepseek-r1 "Explain the basics of machine learning." --verbose | tee logs/deepseek.log

pkill ttylog.sh
