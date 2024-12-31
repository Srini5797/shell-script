#!/bin/bash

MOVIES=("pushpa" "rrr" "devara")
# index starts from 0, size is 3

echo "First movie: ${MOVIES[0]}"
echo "Second movie: ${MOVIES[1]}"
echo "Third movie: ${MOVIES[2]}"

echo "All movies are: ${MOVIES[@]}"