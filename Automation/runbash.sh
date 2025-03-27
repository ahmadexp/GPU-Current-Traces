#! /bin/bash

modelname=deepseek-r1

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh
