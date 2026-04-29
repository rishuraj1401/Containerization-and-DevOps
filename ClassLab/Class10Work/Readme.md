# Making C program image

## Create docker file

1. create separate folder
2. create a C program:

![c](img/c.png)

3. create docker file with commands:

```bash

FROM ubuntu:22.04 AS build
RUN apt-get update \&\& apt-get install -y gcc
COPY hello.c .
RUN gcc -static -o hello hello.c
CMD ["./hello"]

```

![dockerFile](img/dockerFile.png)

---

## Build and run image

1. Build the image from the docker file

```bash
docker build -t cprogram .
```

![build](img/build.png)


2. Check Image:

```bash
docker images
```

![dockerImg](img/dockerImg.png)

3. Run the image:

```bash
docker run -it cprogram
```

## Result

C program running

![run](img/run.png)

