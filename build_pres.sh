#!/bin/bash
while :
do
  sleep 1
  pandoc -t beamer -o defensa_tesis.pdf defensa_tesis.md --filter pandoc-citeproc --bibliography=references.bib --slide-level 2
done

