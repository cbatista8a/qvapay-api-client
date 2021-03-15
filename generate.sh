#!/bin/bash

sudo openapi-generator-cli generate -i openapi.yml -o . -g php -c config.json