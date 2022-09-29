FROM python:3.7.11-stretch

ARG PORT
ARG USER

ENV PORT=${PORT:-5005}
ENV USER=${USER:-capd}

EXPOSE $PORT

RUN python3 -m pip install --no-cache --upgrade pip
RUN pip3 install --no-cache rasa

ADD . /app/

RUN chmod +x /app/launch_bot.sh

RUN useradd $USER

USER $USER

ENTRYPOINT ["/app/launch_bot.sh"]

CMD $PORT
