FROM node:20-slim

WORKDIR /app

RUN npm install -g openclaw

# Create OpenClaw config directory
RUN mkdir -p /root/.openclaw

EXPOSE 18789

# Start gateway and keep container alive
CMD ["sh", "-c", "openclaw gateway || tail -f /dev/null"]
