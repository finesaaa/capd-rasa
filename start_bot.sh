#!/bin/bash

cd app/

rasa run --model models --enable-api --cors "*" --debug -p 5005
