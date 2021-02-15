FROM pytorch/pytorch:1.7.0-cuda10.1-cudnn8-devel

RUN apt-get update && \
    apt-get install -y && \
    apt-get install -y apt-utils wget && \
    apt-get -qq -y install curl && \
    apt-get install -y tar

RUN pip install --upgrade pip
RUN pip install transformers
RUN pip install flask
RUN pip install waitress

RUN mkdir -p /app
WORKDIR /app
COPY . .

RUN curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=1-NJbMK7BbO-2sVHDUPTSyJTQ98xJtbtm" > /dev/null
RUN curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=1-NJbMK7BbO-2sVHDUPTSyJTQ98xJtbtm" -o GPT2-large_mcu.tar
RUN tar -xvf GPT2-large_mcu.tar
RUN rm GPT2-large_mcu.tar

EXPOSE 80

CMD ["python3", "main.py"]
