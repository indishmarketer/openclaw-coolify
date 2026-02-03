FROM node:20-slim

WORKDIR /app

RUN npm install -g openclaw

EXPOSE 18789

# Run OpenClaw in server mode (non-interactive)
CMD ["openclaw", "gateway"]
