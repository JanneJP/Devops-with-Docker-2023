FROM node:16

WORKDIR /app

COPY ./example-frontend /app

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:80/api

RUN npm install && \
    npm install -g serve && \
    npm run build && \
    useradd -m appuser && \
    chown appuser .

USER appuser

CMD serve -s -l 5000 build