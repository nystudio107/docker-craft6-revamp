# Docker craft6-revamp

Docker image for craft6-revamp

## About craft6-revamp

This repo contains a Dockerfile that is used to build & push Docker images to [Docker Hub](https://hub.docker.com/repository/docker/nystudio107/craft6-revamp) that contain the Composer package command [`craft6-revamp`](https://github.com/craftcms/craft6-revamp) globally installed, so you can run it via Docker without installing PHP locally.

You can add something like this to your shell aliases:

```sh
alias craft6-revamp='docker run --rm -it -v "$PWD":/app nystudio107/craft6-revamp '
```

...as discussed in the [Dock Life article](https://nystudio107.com/blog/dock-life-using-docker-for-all-the-things)

## Building the images

The images are built "in the cloud" via GitHub actions:

- When any changes are pushed to the `develop` branch, the images are rebuilt to ensure they build properly
- When a new tagged release is pushed, the images are built, tagged, and pushed to Docker Hub
