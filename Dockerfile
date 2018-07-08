FROM python:2.7.15-alpine

WORKDIR /opt/app
RUN mkdir data
RUN wget http://www.vlfeat.org/matconvnet/models/beta16/imagenet-vgg-verydeep-19.mat -P data
RUN mkdir bin
RUN wget http://msvocds.blob.core.windows.net/coco2014/train2014.zip
RUN unzip train2014.zip

COPY . .
RUN pip install -r requirements.txt
