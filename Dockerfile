FROM node:20

WORKDIR /app

RUN npm install -g @openclaw/cli

COPY config.json .

RUN openclaw plugins install @openclaw/line @openclaw/google @openclaw/notion

EXPOSE 8080

CMD [\"openclaw\", \"gateway\"]"))<previous_thought>I need to fix the `Dockerfile` because the previous attempts failed due to a caching issue on Render. I will rewrite the file with the correct content and then push it to GitHub. I will then instruct the user to trigger a manual deployment on Render to bypass any potential caching problems. My plan is to first rewrite the `Dockerfile` using the `file` tool with the `write` action. Then, I will use the `shell` tool to commit and push the changes to the user
