## GPU Current Traces for Different Workloads

Here, you can find electric-current traces taken using a hall-based CT from the 12v PCIe power cable feeding the RTX4090 while different LLM models are running using Ollama.
In addition, the switch --verbose was used on Ollama to show TPS and other information related to the runtime of the models:
Here is a list of the models:

* deepseek-r1:70b
* hermes3:70b
* llama2:70b
* llama3.1:70b
* llama3.3:70b
* meditron:70b
* orca-mini:70b
* reflection:70b
* stable-beluga:70b
* tulu3:70b

The workload has been the following questions: Write me an essay about planet earth.

## Results

Here are the outputs after running the models compiled in a table:

| Model | Total duration | Load duration | Prompt eval count | Prompt eval duration | prompt eval rate | Eval count | eval duration | Eval rate |
|-------|----------------|---------------|-------------------|----------------------|------------------|------------|---------------|-----------|
| deepseek-r1:70b | 8m40.502768663s | 18.373205ms | 9 token(s) | 1.413s | 6.37 tokens/s | 1320 token(s) | 8m39.069s | 2.54 tokens/s |
| hermes3:70b | 3m46.141651482s | 27.834305ms | 14 token(s) | 1.743s | 8.03 tokens/s | 650 token(s) | 3m44.368s | 2.90 tokens/s |
| llama2:70b | 4m42.232985737s | 18.672521ms | 27 token(s) | 3.014s | 8.96 tokens/s | 871 token(s) | 4m39.199s | 3.12 tokens/s |

| llama3.1:70b |
| llama3.3:70b |
| meditron:70b |
| orca-mini:70b |
| reflection:70b |
| stable-beluga:70b |
| tulu3:70b |

## The setup

Here is how the current measurement setup looks:

<img width="634" alt="Screenshot 2025-03-26 at 4 44 19 PM" src="https://github.com/user-attachments/assets/533f1244-30a3-4817-8887-0536e5a3e604" />

and here is the electric current transducer (DC Current Transformer Coil HSTS016L-F 50A/2.5±0.625V 1%)

![41dg5MzczcL _SX522_](https://github.com/user-attachments/assets/77277676-6b94-4121-b702-d6f53dfc7e86)

Here are the specs:

Type: DC Transformer

Model: HSTS016L-F

Rated input: ±50A

Rated output: 2.5±0.625V

Accuracy: 1%

Dielectric strength:2,5KV 50Hz 1min

This transducer can be purchased of [Amazon](https://www.amazon.com/dp/B0CQ4MLK5B?ref=ppx_yo2ov_dt_b_fed_asin_title)

Here is a picture of the Arduino used to measure the analog output from the electric current transducer:

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

