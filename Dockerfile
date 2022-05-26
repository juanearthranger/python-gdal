FROM python:3.7.13

ARG PROJ_VERSION=7.1.1
ARG GDAL_VERSION=3.2.3
ARG OSGEO_VERSION=3.10.2

RUN apt-get update \
    && apt-get install --yes libsqlite3-dev wget sqlite3 vim cmake

RUN wget https://download.osgeo.org/proj/proj-${PROJ_VERSION}.tar.gz \
    && tar -xf proj-${PROJ_VERSION}.tar.gz \
    && cd proj-${PROJ_VERSION} \
    && ./configure \
    && make \
    && make install

RUN wget https://github.com/OSGeo/gdal/releases/download/v3.2.3/gdal-${GDAL_VERSION}.tar.gz
RUN tar -xf gdal-${GDAL_VERSION}.tar.gz \
    && cd gdal-${GDAL_VERSION} \
    && ./configure --with-python \
    && make \
    && make install

RUN wget https://download.osgeo.org/geos/geos-${OSGEO_VERSION}.tar.bz2 \
    && tar xjf geos-${OSGEO_VERSION}.tar.bz2 \
    && cd geos-${OSGEO_VERSION} \
    && ./configure \
    && make \
    && make install

RUN ln -s /usr/local/lib/libgdal.so /usr/lib/libgdal.so.1 && /sbin/ldconfig
