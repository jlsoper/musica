#!/bin/bash


# functions - end with semicolon or newline


 music-list() { if [ -n "$1" ]; then  find "$1" 2>/dev/null -iname "*.mp3" | sort > /tmp/${1:0:${#1}-1}_music.txt ; else echo "usage: $FUNCNAME <directory>/" ; fi }

 music-totals() { cd /tmp && wc -l *_music.txt > total-AUDIO.ini ; }

