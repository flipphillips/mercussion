#!/bin/sh
python ~/coding/projects/mercussion/parser.py --midi < $1 > ~/coding/projects/mercussion/testing/miditext/$1.miditext
~/downloads/midicomp-0.0.4/midicomp -c ~/coding/projects/mercussion/testing/miditext/$1.miditext ~/coding/projects/mercussion/testing/midi/$1.midi
timidity -c ~/composition/soundfont/timidity.cfg -Ow ~/coding/projects/mercussion/testing/midi/$1.midi -o ~/coding/projects/mercussion/testing/wav/$1.wav
