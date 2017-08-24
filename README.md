# Temperature Converter Application
> Convert temperatures in Celsius from commandline, textfile, url or mqtt
> to text, json or html output in Fahrenheit and Kelvin.


This Application is made for the course System programming for Vives Hogeschool Oostende.
We need to make a temperature converter wich accepts input from the commandline, a textfile, an url or a mqtt.
The output is in clear text, in a json or html.

![](http://etemperature.com.au/wp-content/uploads/2016/05/Color-Temperature.jpg)

## Installation

Windows:

```powershell
gem install temperature_converter_nielsvanvlaenderen
```

## Usage

To use the program you need to open a commandline interface.
Chose one way of input and one way of output listed below:

### input:
| Command   | Explanation   |
| --------- |:-------------:|
| -t        | from cmdline  |
| -f        | from file     |
| -u        | from url      |
| -m        | from mqtt     |

### Output:
| Command   | Explanation  |
| --------- |:------------:|
| --text    | as text      |
| --json    | as json      |
| --html    | as html      |


## Examples
### Input from text
```
temp-conv -t 16 --text
```
Temperature:
16.0 °C
60.8 °F
289.15 K

```
temp-conv -t 16 --json
```
{celsius: 16.0, fahrenheit: 60.8, kelvin: 289.15}


```
temp-conv -t 16 --html
```
```
<div>
        <div>16.0 °C</div>
        <div>60.8 °F</div>
        <div>289.15 K</div>
</div>
```

### Other inputs
```
temp-conv -f file.txt --text/--json/--html
```

```
temp-conv -url https://labict.be/software-engineering/temperature/api/temperature/fake --text/--json/--html
```

```
temp-conv -m --text/--json/--mqtt
```
(mqtt is still in development)


## Release History

* 1.0.0
    * The first proper release
* 0.0.0-0.0.999
    * Work in progress


## Meta

Niels Van Vlaenderen

Distributed under the MIT license.

[https://github.com/Skrimbler/temperature_converter](https://github.com/skrimbler/temperature_converter)
