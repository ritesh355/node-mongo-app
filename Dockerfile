# Use a lightweight Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json & package-lock.json first (for better caching)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy the backend source code
COPY app ./app

# Expose the app's port
EXPOSE 3000

# Start the app
CMD ["node", "app/server.js"]

