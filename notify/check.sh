#!/bin/bash
int=1
while (($int <= 60)); do

  if [ $((int % 5)) -eq 0 ]; then
    `curl \
        -d "Look ma, **bold text**ssss, *italics*, ..." \
        -H "Markdown: yes" \
        ntfy.sh/goldenli-notify`
  fi

  let "int++"
  sleep 1
done