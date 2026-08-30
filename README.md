# docker-pw

Playwright end-to-end testing suite with Docker containerization and GitHub Actions CI workflow.

## Features
- **Playwright Test Suite**: End-to-end tests written in TypeScript.
- **Docker Support**: Containerized execution using official Microsoft Playwright Docker image (`mcr.microsoft.com/playwright:v1.62.1-noble`).
- **Docker Compose**: Pre-configured `docker-compose.yml` with volume mounts for test reports.
- **GitHub Actions Integration**: Automated CI pipeline running tests inside Playwright Docker container on push/PR.

## Quick Start

### Local Execution (Node.js)
```bash
# Install dependencies
npm install

# Run tests
npm test
```

### Docker Execution
```bash
# Build Docker image
npm run docker:build

# Run tests in Docker container
npm run docker:run
```

### Docker Compose Execution
```bash
# Run tests using Docker Compose
npm run docker:compose

# Stop and clean up containers
docker compose down
```

## Viewing Test Reports
After running tests, view the HTML report locally:
```bash
npx playwright show-report
```
