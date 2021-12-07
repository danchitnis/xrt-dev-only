#!/bin/bash

echo hello

wget https://www.xilinx.com/bin/public/openDownload?filename=xrt_202120.2.12.427_20.04-amd64-xrt.deb
mv openDownload?filename=xrt_202120.2.12.427_20.04-amd64-xrt.deb xrt.deb

apt-get install -y ./xrt.deb

echo -e ""
echo "Xilinx Runtime installed!"