## GPU Current Traces for Different Workloads

Here, you can find electric-current traces taken using a hall-based CT from the 12v PCIe power cable feeding the RTX4090 while different LLM models are running using Ollama.
In addition, the switch --verbose was used on Ollama to show TPS and other information related to the runtime of the models:
Here is a list of the models:

* deepseek-r1_70b
* hermes3_70b
* llama2_70b
* llama3_10b
* llama3_30b
* meditron_70b
* orca-mini_70b
* reflection_70b
* stable-beluga_70b
* tulu3_70b

The workload has been the following questions: Write me an essay about planet earth.

## Results

Here are the outputs after running the models:

# deepseek-r1_70b
# hermes3_70b
# llama2_70b
# llama3_10b
# llama3_30b
# meditron_70b
# orca-mini_70b
# reflection_70b
# stable-beluga_70b
# tulu3_70b

## The setup

Here is how the current measurement setup looks:

<img width="634" alt="Screenshot 2025-03-26 at 4 44 19 PM" src="https://github.com/user-attachments/assets/533f1244-30a3-4817-8887-0536e5a3e604" />

and here is the electric current transducer (DC Current Transformer Coil HSTS016L-F 50A/2.5±0.625V 1%)

![41dg5MzczcL _SX522_](https://github.com/user-attachments/assets/77277676-6b94-4121-b702-d6f53dfc7e86)

And here, the Arduino is used to measure the analog output from the electric current transducer:

<img width="633" alt="Screenshot 2025-03-26 at 4 44 07 PM" src="https://github.com/user-attachments/assets/d15a2c3c-5e80-420e-b929-d9826e246526" />

Running the following sketch

```
void setup() {
  // initialize serial communication at 115200 bits per second:
  Serial.begin(115200);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin 0:
  int sensorValue = analogRead(A0);
  Serial.println(sensorValue);
}
```

and here is the bash script used to log the serial output from the ttyACM0 (Arduino's serial port):

```
$ (stty raw; cat > table_name.csv) < /dev/ttyACM0
```

