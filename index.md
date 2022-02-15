## Welcome to MCD Unison - Covid-19 Hermosillo Data

This is a page created for the purpose of learning in the course of "Productivity tool", where we use Docker, GitHub, bash, cvskit as tools for learn and make this project.
Here will show you how I get to obtain the data, step by step, you are allowed to use it using the [dockerfile](https://github.com/arielox5/MCD_Act2/blob/main/Dockerfile).


This result shows how many cases are on Hermosillo.

### Creating docker file


```Docker File
Save the next code on a file called DOCKERFILE

# Set the image to use, in this case Ubuntu
FROM ubuntu
# Set the current directory to start
workdir root/
# Run at the beging these comands, getting all the software required
RUN apt-get -y update && \
	apt-get install -yq nano curl unzip less pip tldr &&\
	lang=c.UTF-8 &&\
    pip install csvkit
# copy the bash file whom will download and clean the data from the current folder
copy scriptTest.sh /root

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

### Bash file to clean data

```
# Check if a zip file exist (data) if not it will be downloaded
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


```

### Support or Contact

Once you have both files (on the same folder), you can run the docker file.
