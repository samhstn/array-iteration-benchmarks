#!/bin/bash

ARR_LENGTH=10000

echo "generating json with array length: $ARR_LENGTH"

node generate_json.js $ARR_LENGTH

node index.js

mix bench
