#!/bin/sh
python /home/alan/coding/_checkouts/mercussion/parser.py $1.music --midi > midi/$1.miditext
cd midi
~/downloads/midicomp-0.0.4/midicomp -c $1.miditext $1.midi
cd ..
