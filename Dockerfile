FROM node:20

WORKDIR /app

# Install system deps
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Clone OpenClaw source
RUN git clone https://github.com/openclaw/openclaw.git .

# Install dependencies
RUN npm install

# Build OpenClaw
RUN npm run build

# Create data directory
RUN mkdir -p /root/.openclaw

# Expose gateway port
EXPOSE 18789

# Run OpenClaw directly from source
CMD ["node", "dist/index.js"]
