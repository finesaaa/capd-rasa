FROM ubuntu

RUN apt-get update && apt-get install -y python3 python3-pip \
  && python3 -m pip install --no-cache --upgrade pip \
  && pip3 install --no-cache rasa

ADD . /app/

RUN chmod +x /app/start_bot.sh

CMD /app/start_bot.sh
