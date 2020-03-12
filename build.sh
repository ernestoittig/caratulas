#!/bin/bash

if [ ! -e ./out ]; then
	mkdir out
fi

for i in $(echo *.svg); do
   	inkscape -z -C --file="$i" --export-pdf="out/${i%.*}.pdf" 2>/dev/null
	echo Processed file $i
done

