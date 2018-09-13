FROM ubuntu:latest

COPY xampp.run .

RUN apt-get update && apt-get install net-tools && chmod +x xampp.run && ./xampp.run

EXPOSE 80
