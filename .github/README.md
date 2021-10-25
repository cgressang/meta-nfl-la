# meta-nfl-la

This is a meta repo for managing a nfl app, with multiple projects and development environment.

[Laravel Backend repo](https://github.com/cgressang/nfl-laravel-api)

[Angular Frontend repo](https://github.com/cgressang/nfl-angular-ui)

Docker containers:
* Frontend with latest node image and angular with hot reload
* Backend with php 8.0.6 version image
* Webserver with nginx 1.19.6-alpine image
* Mysql with 5.7 image
* Redis with redis:alpine

## Prereqs
PHP
Composer
Node
Angular
Docker
Git
Meta

## Getting Started

clone repo

```console
$ meta git clone git@github.com:cgressang/meta-nfl-la.git
```

navigate to frontend

```console
$ cd meta-nfl-la/nfl-angular-ui
$ npm install
```
navigate to backend

```console
$ cd ../nfl-laravel-api
$ composer install
```

navigate to meta directory and build docker containers

```console
$ cd ..
$ make build
```

start containers

```console
$ make watch
```


Configured Links:

backend: `localhost`

frontend: `localhost:4200`
