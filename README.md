[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/joseajp/agendash/)

# docker-agendash

A docker image for Agendash, the dashboard for [Agenda](https://github.com/rschmukler/agenda)

## TL;DR;

### docker-compose
Edit the `environment` section of the docker-compose file and run

```
docker-compose up
```

### docker
Run

```
docker run -t -e AGENDA_DB_NAME="agendaDatabase" -e AGENDA_DB_COLLECTION="agendaJobs" -p 3001:3001 joseajp/agendash
```

Add `-e ENV_VAR=value` for each configuration value you want to change

## Configuration variables

The following variables can be set up in the docker-compose.yml file or using the `-e ENV_VAR=value` option in the `docker run` command.

| Variable              | Default           | Description                                                                                 |
|-----------------------|:-----------------:|---------------------------------------------------------------------------------------------|
| MONGODB_HOST          | localhost         | Domain where Mongo is running. (use docker.for.mac.localhost if using Docker for mac)       |
| MONGODB_PORT          | 27001             | Port where Mongo is listening                                                               |
| MONGODB_USER          |                   | User for connecting to the Agenda database in Mongo                                         |
| MONGODB_PASSWORD      |                   | Password for the Mongo user                                                                 |
| AGENDA_DB_NAME        | agendaDb          | Name of the Agenda database                                                                 |
| AGENDA_DB_COLLECTION  | agendaCollection  | Name of the Agenda jobs collection                                                          |
| PORT                  | 3001              | Port where you want Agendash to listen. Once running go to `localhost:PORT` on your browser |
