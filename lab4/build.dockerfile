FROM my-system as build

COPY *.json ./

RUN npm install && npm cache clean --force

ENV PROJECT_DIR=/app

COPY . ${PROJECT_DIR}

RUN npm run build
