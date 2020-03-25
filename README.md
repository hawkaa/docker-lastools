# Lastools docker image

A docker image that includes both the open and closed source binaries for the
Lastools toolchain. Compared to the other Lastools docker images out there, this
one runs the windows binaries directly using Wine.

## Usage

```bash
docker run hakonamdal/lastools <cmd> <args>
```

Replace `<cmd>` with whatever Lastool binary you want to use.

To see all available tools, run the image without any arguments:

```bash
docker run hakonamdal/lastools
```

## Uploading the image to Dockerhub (for developers)

``bash
docker build . -t lastools
docker tag lastools hakonamdal/lastools
docker push hakonamdal/lastools