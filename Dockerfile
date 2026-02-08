# Cache buster: 2026-02-08 17:40 GMT+8
FROM node:20

WORKDIR /app

RUN npm install -g @openclaw/cli

COPY config.json .

RUN openclaw plugins install @openclaw/line @openclaw/google @openclaw/notion

EXPOSE 8080

CMD ["openclaw", "gateway"]
