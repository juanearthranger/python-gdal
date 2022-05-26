# Python-GDAL
This project helps us to build an image with the next packages and versions.

- Python 3.7.13
- [GDAL](https://gdal.org/)=3.2.3 
- [Proj](https://proj.org/)=7.1.1
- [OSGEO](https://www.osgeo.org/)=3.10.2

## Usage
Docker
```
docker build .
```

Docker compose
```yml
FROM juanearthranger/python-gdal:1.0
```