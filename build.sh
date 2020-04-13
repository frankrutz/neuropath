#!/usr/bin/bash


for PAGE in index stiftungszweck spenden stiftungsrat kontakt
do
	echo $PAGE
	TARGET=$PAGE".html"
	echo "TARGE:$TARGET"
	SOURCE="${PAGE}_source.html"
	echo "SOURCE;$SOURCE"

	cat top.html    >  ./website/${TARGET}
	cat ${SOURCE}   >> ./website/${TARGET}
        cat bottom.html >> ./website/${TARGET}
	cp neuropath.css     ./website/
	cp w3mobile.css      ./website/
	cp neuropath.png     ./website/
	cp logo_uzh_blue.png ./website/
	cp background.png    ./website/
done
