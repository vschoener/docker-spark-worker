# docker-spark-worker

This repo allows you to connect a spark worker to a spark master node.

To keep it simple and as I'm experimenting this service, you need to do a couple things to get it running properly.

## Pre-require
You need to have or install a master node before trying to use this one, you can use mine if you want to try both :
- https://github.com/vschoener/docker-spark

If you already have one running, you have to tweak the docker-compose to connect the worker to your master node

## Install

First create the network
- docker network create ws_backend

Then build the image using our Makefile
- make build

## Run

Now we have our worker ready, you can simply run the following command
- make start

If you browse to the web ui of spark (IP:8080), you should see the worker connected to your master node.

## Scalability

Oh sure, maybe we want more node ? Easy, we just have to execute the following command:
- docker-compose scale ws-spark-worker=5

Change the number if you want more or less node

## TODO

I'm trying to find a way to connect and expose the port of my worker, it will works for one process, but I can't use it when I try to scale
them to several process because the port will be already used by the first one..