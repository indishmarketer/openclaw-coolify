FROM node:20-slim

WORKDIR /app

RUN npm install -g openclaw

RUN mkdir -p /root/.openclaw

EXPOSE 18789

CMD ["sh", "-c", "OPENCLAW_HOST=0.0.0.0 OPENCLAW_PORT=18789 openclaw gateway"]
