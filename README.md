# Stiftung Neuropath

Modernization of https://www.stiftung-neuropath.ch/

Preview at https://www.stiftung-neuropath.ch/preview/

Status: prerelease-Version 0.9 ready for testing including multilanguage

Disclaimer: No content changes so far (except Hengartner became president ETH Rat)

# next steps

Work continues saturday 25th april


Testing

French and Italian translation (help wanted, see issues 8 and 9)


# how to clone

git clone https://github.com/frankrutz/neuropath


# technical description


The site consists of the five pages
index.html stiftungszweck.html spenden.html stiftungsrat.html kontakt.html

Each page consists of three parts:
header.html source.html bottom.html

The three parts are joined by the website bash build script build.sh

Language suppport is added by the translation file
textblocks.txt

And the script build.sh , see sed command.

The final page setup is stored in the ./website/en ./website/de directories
i.e. each language has its own directory

# webmaster

Webmaster is David Rutz, currently assisted by Frank Potthast Rutz




