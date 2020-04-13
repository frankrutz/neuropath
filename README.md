# Stiftung Neuropath

Modernisation of https://www.stiftung-neuropath.ch/

Status: prerelease-Version 0.8 ready for first testers

Disclaimer: No content changes so far (except Hengartner became president ETH Rat)

# next steps

testing

work continues monday 13th april in the evening


# website-preview

Website preview:

https://htmlpreview.github.io/?https://raw.githubusercontent.com/frankrutz/neuropath/master/website/index.html




# how to clone

git clone https://github.com/frankrutz/neuropath


# technical description


The site consists of the five pages
index.html stiftungszweck.html spenden.html stiftungsrat.html kontakt.html

Each page consists of three parts:
header.html source.html bottom.html

The three parts are joined by the website bash build script build.sh

The final page setup is stored in the ./website directory

# TODOs 

t7) testing 


# Done TODOs

t1) frank: logo to large for mobile browser (fixed, resize build in)
solution: logo removed

t2) frank: implement pages stiftungszweck.html spenden.html stiftungsrat.html kontakt.html
solution: done

t6) logo is a bit too small on mobile browser
solution: logon removed


t3) The boxing of the header has the wrong color 
solution: boxing removed

t4) the color scheme is a bit too light, set it to usz colorscheme
solution: replaced in header by background image, on the bottom, the colorscheme is good.

t5) One page does not scroll properly at the bottom
solution: spaceholders added



# open questions



# closed questions

q2) für die Metadaten der Webseite sollte man einige keywords spezifizieren. 
Antwort: Neuropathologie, Creutzfeldt-Jakob Krankheit, Prionen, PrP, Fatal Familial Insomnia, Rinderwahnsinn, BSE, Morbus Alzheimer, Hirntumoren, Multiple Sklerose

q3) Hat die Stiftung ein "corporate color scheme"? 
Antwort: Nein. Lösung, Frank: Hintergrund weiss, black Fonts, Corporate Color=hex 0099ff / rgb=0.153,255
Font style logo: Arial Rounded MT Bold
(open for discussions)

q1) gibt es ein Logo für die Stiftung?
Antwort: Nein, vorschlag unter https://github.com/frankrutz/neuropath/blob/master/neuropath.png
Lösung: wir arbeiten ohne Logo




# Color scheme

The light blue color is hexadecimal 0099ff decimal 0,153,255




