FROM node:20-slim

WORKDIR /app

# Create OpenClaw config directory
RUN mkdir -p /root/.openclaw

# Expose OpenClaw port
EXPOSE 18789

# Run OpenClaw via npx (THIS IS THE KEY)
CMD ["npx", "openclaw", "gateway"]
