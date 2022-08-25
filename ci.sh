#!/bin/sh

docker build -t test-image .
docker run -it --rm \
  $(printenv | grep -E '^GITHUB' | sed 's/"/\\"/g; s/\(.*\)/"\1"/g; s/^/-e /g') \
  test-image
