FROM ubuntu

ARG PORT
ARG USER

ENV PORT=${PORT:-5005}
ENV USER=${USER:-capd}

EXPOSE $PORT

RUN apt-get update && apt-get install -y \
  python3 \
  python3-pip \
  && python3 -m pip install --no-cache --upgrade pip \
  && pip3 install --no-cache rasa==2.8.1

ADD . /app/

RUN chmod +x /app/launch_bot.sh

RUN useradd $USER

USER $USER

ENTRYPOINT ["/app/launch_bot.sh"]

CMD $PORT
