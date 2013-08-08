cd /hookstaging && wget -O website.zip -q https://github.com/ethanbond/ethanbond.com/archive/master.zip

if [ -f /hookstaging/website.zip ]; then
	unzip -q /hookstaging/website.zip
	rm /hookstaging/website.zip
	mv Project-master ethanbond.com
	rm -rf ~/ethanbond.com
	mv ethanbond.com ~/ethanbond.com
fi
