#! /bin/bash

modelname=deepseek-r1

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=hermes3

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=llama2

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=llama3.1

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=llama3.3

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=meditron

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=orca-mini

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=reflection

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=stable-beluga

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh

modelname=tulu3

nohup ./ttylog.sh logs/$modelname.csv &
ollama run $modelname "Explain the basics of machine learning." --verbose | tee logs/$modelname.log
pkill ttylog.sh
