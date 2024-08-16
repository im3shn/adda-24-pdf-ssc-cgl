#!/usr/bin/bash
URL=https://www.adda247.com/jobs/ssc-cgl-previous-year-question-paper/
curl -f -L "$URL" | grep -Eo "https?://\S+?\.pdf" > links.txt
rm -rf pdfs
mkdir pdfs
cd pdfs
for i in $(cat ../links.txt);
do
echo "${i##*/}"
sleep 3
curl -o "${i##*/}" "$i"
done
