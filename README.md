# GPT2 MCU

[![Run on Ainize](https://ainize.ai/images/run_on_ainize_button.svg)](https://ainize.web.app/redirect?git_repo=https://github.com/fpem123/GPT2-MCU)

This project generate MCU script using GPT-2 model.

Fine tuning data: [Kaggle](https://www.kaggle.com/pdunton/marvel-cinematic-universe-dialogue)

Model download: [Google drive]()

### Model information

    Base model: gpt-2 large
    Epoch: 50
    Train runtime: 11328.2175 secs
    Loss: 0.0217

### How to use

    * First, Choose MCU character name.
    * Second, Fill what the character will say in text. This will be base of script.
    * And then, Fill number in length. Text is created as long as "length". I recommend between 100 and 300.
    * If length is so big, generate time will be long.

### Post parameter

    name: The MCU character name.
    text: The base of script.
    length: The size of generated text.

### Image reference

    static/README.md

## * With CLI *

   

## * With swagger *

API page: [In Ainize](https://ainize.ai/fpem123/GPT2-MCU?branch=master)

## * With a Demo *

Demo page: [End-point](https://master-gpt2-mcu-fpem123.endpoint.ainize.ai/)