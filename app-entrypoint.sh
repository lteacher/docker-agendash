#!/bin/sh

if [ -z "$MONGODB_USER" ]; then
    MONGO_STRING=mongodb://${MONGODB_HOST}:${MONGODB_PORT}/${AGENDA_DB_NAME}
else
    MONGO_STRING=mongodb://${MONGODB_USER}:${MONGODB_PASSWORD}@${MONGODB_HOST}:${MONGODB_PORT}/${AGENDA_DB_NAME}
fi

npx agendash2 --db=$MONGO_STRING --port=$PORT
