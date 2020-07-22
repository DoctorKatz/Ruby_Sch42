#!/bin/bash

html= curl --silent -i "$1" | grep -i location | cut -d\  -f2
