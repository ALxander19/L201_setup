#!/bin/sh

home_dir=/home/alex/Pruebas
for entry in "$home_dir"/*
do
  if [ "$entry" = "/home/alex/Pruebas/a" ] || [ "$entry" = "/home/alex/Pruebas/b" ]; then
    echo "Keep file $entry"
  else
    echo "Detele file $entry"
    rm -r "$entry"
  fi 
done
