FROM node:22.12.0

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Install pnpm (REQUIRED by OpenClaw)
RUN npm install -g pnpm

# Clone OpenClaw source
RUN git clone https://github.com/openclaw/openclaw.git .

# Install dependencies using pnpm
RUN pnpm install

# Build OpenClaw
RUN pnpm run build

# Create OpenClaw data directory
RUN mkdir -p /root/.openclaw

# Expose gateway port
EXPOSE 18789

# Start OpenClaw
CMD ["node", "dist/index.js"]
