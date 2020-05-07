﻿# Stiftung Neuropath

Modernization of https://www.stiftung-neuropath.ch/

Preview at https://www.stiftung-neuropath.ch/preview/

Status: Version 1.0 Go-Life on Thursday 7th May 2020



# next steps

Waiting for bugfixes


# how to clone and build

What you need: Linux system with bash and git. Git bash on Windows is also ok.


mkdir mygitdir

cd mygitdir

git clone https://github.com/frankrutz/neuropath

cd neuropath

./build.sh



# technical description


The site consists of the five pages
index.html stiftungszweck.html spenden.html stiftungsrat.html kontakt.html

Each page consists of three parts:
header.html source.html bottom.html

The three parts are joined by the website bash build script build.sh

Language suppport is added by the translation file
textblocks.txt

See the script build.sh , especially the sed command.

The final page setup is stored in the ./website/en ./website/de directories
i.e. each language has its own directory

# translators and webmaster

The page was translated to:

English by Prof. Dr. Adriano Aguzzi

Italian by Monica Tamagni and Dr. Claudio Tamagni

French by Dr. Torbjörn Bremnes

Webmaster is David Rutz, in education, currently assisted by Dr. Frank Potthast Rutz






