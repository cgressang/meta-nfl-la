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

copy evironment file to api

```console
$ cp ./deployment/development/.env ./nfl-laravel-api/.env
```

install npm for frontend

```console
$ npm install --prefix=./nfl-angular-ui
```

install coposer packages

```console
$ composer install --working-dir=./nfl-laravel-api
```

build containers

```console
$ make build
```

start containers

```console
$ make watch
```

run migrations: once containers are running, exec into api container

```console
$ php artisan migrate
```

### Configured Links:

backend: `localhost`

frontend: `localhost:4200`
