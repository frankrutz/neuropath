#!/usr/bin/bash


rm -fR ./website/
mkdir -p ./website/
cp index.html ./website/


for LANG in de en it
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
		cp donate_background.png    ${TARGETDIR}
		cp contact.png              ${TARGETDIR}

       #make sure reference is to correct PAGE
	   sed -i "s|REPLACE_ME_WITH_PAGE_IN_BUILD|${PAGE}|g" ${TARGETDIR}*.html
	done
    
	#TRANSLATE
    grep textblock.*_${LANG}  text_blocks.txt > ${TARGETDIR}tmplist_${LANG}.txt
    cd ${TARGETDIR}
    
   while read line; do
	  set -- $line;
	  TEXTBLOCK=${1:0:14}
	  TEXT=${line:18}
	  #replace textblock with text in correct LANGuage
	  sed -i "s|${TEXTBLOCK}|${TEXT}|g" *.html
   done <tmplist_${LANG}.txt

   rm tmplist_${LANG}.txt
    cd ../..
done