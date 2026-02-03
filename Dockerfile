FROM node:20-slim

# Set working directory
WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw

# Expose OpenClaw default port
EXPOSE 18789

# Start OpenClaw
CMD ["openclaw", "onboard"]
