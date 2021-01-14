FROM node:alpine

LABEL maintainer="lteacher"

WORKDIR /usr/app
COPY ./ /usr/app
RUN npm install


RUN npm install agendash2

COPY app-entrypoint.sh /

ENV MONGODB_HOST="localhost" \
    MONGODB_PORT="27017" \
    MONGODB_USER="" \
    MONGODB_PASSWORD="" \
    AGENDA_DB_NAME="agendaDb" \
    AGENDA_DB_COLLECTION="agendaCollection" \
    PORT="3001"

EXPOSE ${PORT}

ENTRYPOINT ./app-entrypoint.sh
CMD ["sh"]
