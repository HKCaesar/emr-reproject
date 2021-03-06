#!/bin/sh -e

# Bootstrap code to install GDAL, rasterio, etc.
sudo yum-config-manager --enable epel
sudo yum -y install geos proj proj-nad proj-epsg
sudo ln -s /usr/lib64/libproj.so.0 /usr/lib64/libproj.so
curl https://s3.amazonaws.com/azavea-datahub/emr/binaries/gdal-1.11.2-amz1.tar.gz | sudo tar zxf - -C /usr/local
sudo GDAL_CONFIG=/usr/local/bin/gdal-config pip-2.7 install rasterio boto3
