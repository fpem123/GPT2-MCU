# GPT2 MCU

[![Run on Ainize](https://ainize.ai/images/run_on_ainize_button.svg)](https://ainize.web.app/redirect?git_repo=https://github.com/fpem123/GPT2-MCU)

This project generate MCU script using GPT-2 model.

Fine tuning data: [Kaggle](https://www.kaggle.com/pdunton/marvel-cinematic-universe-dialogue)

Model download: [Google drive](https://drive.google.com/file/d/1-NJbMK7BbO-2sVHDUPTSyJTQ98xJtbtm/view?usp=sharing)

### Model information

    Base model: gpt-2 large
    Epoch: 30
    Train runtime: 2025.88 secs
    Loss: 0.0221

### How to use

    * First, Choose MCU character name.
    * Second, Fill what the character will say in text. This will be base of script.
    * And then, Fill number in length. Text is created as long as "length". I recommend between 100 and 300.
    * If length is so big, generate time will be long.

### Post parameter

    name: The MCU character name.
    text: The base of script.
    length: The size of generated text. (min: 50)


### Output foramt

    {"0": [[character name, dialog], [character name, dialog], ...]}
    

### Image reference

    static/README.md

## * With CLI *

### Input example

    curl -X POST "https://master-gpt2-mcu-fpem123.endpoint.ainize.ai/mcu" -H "accept: application/json" -H "Content-Type: multipart/form-data" -F "name=TONY STARK" -F "text=Today, we" -F "length=100"


### Output example

    {
      "0": [
        [
          "TONY STARK",
          " Today, we're gonna talk about humility. But I'm sure if you were to wrap this up, you'd say, “I know I didn't do that.”"
        ],
        [
          "HELMUT ZEMO",
          " That you did."
        ],
        [
          "TONY STARK",
          " I know. I’m a bit of a diva. I can’t control the stuff that happens around me, but I can control how I react to it. And that’s where you come in."
        ]
      ]
    }


## * With swagger *

API page: [In Ainize](https://ainize.ai/fpem123/GPT2-MCU?branch=master)

## * With a Demo *

Demo page: [End-point](https://master-gpt2-mcu-fpem123.endpoint.ainize.ai/)
