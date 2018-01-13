FROM alexellis2/raspistill:latest

RUN apt-get update -qy \
  && apt-get upgrade -qy \
  && apt-get install -qy python \
  && apt-get autoremove

COPY . .

VOLUME [ "/var/image/", "./config.py" ]

ENTRYPOINT []
CMD ["python", "take.py", "60"]
