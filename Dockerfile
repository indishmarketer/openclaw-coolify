FROM node:20-slim

WORKDIR /app

# Install OpenClaw
RUN npm install -g openclaw

# Ensure config directory exists
RUN mkdir -p /root/.openclaw

# Explicitly expose port
EXPOSE 18789

# Run OpenClaw using absolute path
CMD ["/usr/local/bin/openclaw", "gateway"]
