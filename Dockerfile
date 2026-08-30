# Use official Playwright base image (includes browsers & system dependencies)
FROM mcr.microsoft.com/playwright:v1.62.1-noble

# Set working directory inside container
WORKDIR /app

# Copy dependency definition files
COPY package*.json ./

# Install npm dependencies
RUN npm ci || npm install

# Copy source code and test files
COPY . .

# Run Playwright tests by default when container starts
CMD ["npx", "playwright", "test"]
