# docker-gophish

## Description

This is a quick way to deploy a [gophish](https://github.com/gophish/gophish) installation on your local machine.

## Usage

As a daemon:

```
docker run -d --name gophish -p 127.0.0.1:3333:3333 -p 80:80 phocean/gophish
```

For debugging:

```bash
docker run -ti --name gophish -p 3333:3333 -p 80:80 phocean/gophish
```
