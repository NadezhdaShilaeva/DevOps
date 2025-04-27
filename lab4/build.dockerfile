FROM my-system as build

COPY ./app/*.json ./

RUN npm install && npm cache clean --force

ENV PROJECT_DIR=/app

COPY ./app ${PROJECT_DIR}

RUN npm run build
