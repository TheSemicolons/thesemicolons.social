#!/bin/sh
links="discord food gitlab instagram patreon socials support throne twitch x website youtube"
formats="ASCII PNG SVG"

for link in ${links}
do
	for format in ${formats}
	do
		qrencode -c -d 96 -l H -m 4 -s 3 -v 10 -t ${format} -o "./static/images/qr_${link}.${format}" "https://thesemicolons.social/${link}"
	done
done
