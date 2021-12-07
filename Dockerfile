# A container for Xilinx XRT development
# Author: Danial Chitnis
# Updated: Dec 2021

from ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y wget \
    x11-apps

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]



