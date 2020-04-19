#!/usr/bin/bash


rm -fR ./website/
for LANG in de en
do
    TARGETDIR=./website/${LANG}/
    mkdir -p ${TARGETDIR}
	for PAGE in index stiftungszweck spenden stiftungsrat kontakt
	do
		echo $PAGE
		TARGET=$PAGE".html"
		echo "TARGE:$TARGET"
		SOURCE="${PAGE}_source.html"
		echo "SOURCE;$SOURCE"

		cat top.html    >  			${TARGETDIR}/${TARGET}
		cat ${SOURCE}   >> 			${TARGETDIR}/${TARGET}
        cat bottom.html >> 			${TARGETDIR}/${TARGET}
		cp neuropath.css   			${TARGETDIR}
		cp w3mobile.css    			${TARGETDIR}
		cp logo_uzh_blue.png 		${TARGETDIR}
		cp background.png    		${TARGETDIR}
		cp favicon.ico       		${TARGETDIR}
		cp MichaelHengartner.jpg    ${TARGETDIR}
		cp BeatriceBeckSchimmer.jpg ${TARGETDIR}
		cp AdrianoAguzzi.jpg        ${TARGETDIR}
		cp laser.png                ${TARGETDIR}
		cp protein.png              ${TARGETDIR}
	done
    
	#TRANSLATE
    

done