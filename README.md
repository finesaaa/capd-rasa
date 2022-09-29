# capd-rasa
Chatbot for SahabatCAPD App Powered By RasaHQ:)

## Installation Rasa on Windows
- Download Visual Studio C++ and Anaconda
- Open Anaconda Prompt
- Create your environment by using command:

  `conda create --name name_your_env python==3.8`
- Activate your environment

  `conda activate name_your_env`
- Install ujson

  `conda install ujson`
- Install tensorflow

  `conda install tensorflow`
- Install rasa HQ

  `pip install rasa`

## Run Rasa
```
rasa run actions
rasa run -m models --enable-api --endpoints endpoints.yml
```

## Update Image to Docker Hub
```
docker build --build-arg PORT=<port> --build-arg USER=<user_name> -t capd-rasa:<tag> -f docker/Dockerfile capd-bot/
```

## Build Image
`docker build -f docker/Dockerfile -t capd-bot capd-bot/`

## Run Container
`docker run -dp 5005:5005 --rm -it capd-bot`
