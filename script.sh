if test -f *.zip; then
	echo "Zip file exist Skipping download"
else
	echo "No information found, downloading information"
	curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip	
fi

if test -f *.csv; then
	echo "There are csv files, Skipping unzip"
else
	echo "Unzip file"
	for file in *.zip; do
		echo "unziping file"
		unzip $file
	done
fi

for csvF in *.csv; do
	echo "Selecting Sonora Data"
	csvgrep -c MUNICIPIO_RES -r "30" csvF > datosHMO.csv
	csvgrep -c UCI -r "SI" datosHMO.csv > datosHMO_PCI.csv
done