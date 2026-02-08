# Cache buster: 2026-02-08 18:05 GMT+8
FROM node:20

WORKDIR /app

# 更新 npm 到最新版本
RUN npm install -g npm@latest

# 安裝 openclaw cli
RUN npm install -g @openclaw/cli

COPY config.json .

RUN openclaw plugins install @openclaw/line @openclaw/google @openclaw/notion

EXPOSE 8080

CMD ["openclaw", "gateway"]
