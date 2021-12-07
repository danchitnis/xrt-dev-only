# xrt-dev-only
Xilinx XRT platform for WSL2 and containers

## prerequisites
install docker on ubuntu or Windows Desktop with WSL2 integration enabled (do not install docker inside WSL2)

## Building (Test only)
Use Linux (either ubuntu or WSL2) to run the following commands:
```bash
git clone https://github.com/danchitnis/xrt-dev-only.git
cd xrt-dev-only
docker build . -t xrt-dev
```

## Running (Test only)
for commandline only:

```bash
docker run -it xrt-dev
```

with GUI access (Wslg on Win11 is required):

*NOTICE*: this will expose the docker container to the host machne, so it is not recommended to run this on a public network. Alternatively use the RDP method for secure connection.

```bash
docker run -it --env=DISPLAY=$DISPLAY --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw xrt-dev
```
