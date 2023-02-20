# Python-GDAL
This project helps us to build an image with the next packages and versions.

1. [Requirements](#requirements)
2. [Build](#build)   
3. [Usage](#usage)

## Requirements
- Python 3.8.16
- [GDAL](https://gdal.org/)=3.4.1 
- [Proj](https://proj.org/)=7.1.1
- [OSGEO](https://www.osgeo.org/)=3.10.2

## Build
For building the image
```sh
docker build .
```
## Usage
From docker compose
```yml
FROM juanearthranger/python-gdal:1.2
```