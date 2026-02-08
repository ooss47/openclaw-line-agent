# 使用官方 Node.js 20 鏡像
FROM node:20-slim

# 設置工作目錄
WORKDIR /app

# 安裝 OpenClaw CLI
RUN npm install -g @openclaw/cli

# 複製配置文件
COPY config.json .

# 安裝插件
RUN openclaw plugins install @openclaw/line @openclaw/google @openclaw/notion

# 暴露 Gateway 端口
EXPOSE 8080

# 啟動 OpenClaw Gateway
CMD ["openclaw", "gateway"]
