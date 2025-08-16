# NodeCG Docker

This repository provides a convenient Dockerized setup for running NodeCG with your custom bundles.

## Features

- Uses a packaged version of NodeCG
- Installs all required dependencies
- Supports custom bundles via the `/bundles` directory
- Simple startup with Docker Compose

## Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Quick Start

1. **Clone this repository:**

   ```sh
   git clone https://github.com/skymidy/nodeCG-docker.git
   cd nodeCG-docker
   ```

2. **Add your bundles:**
   Place your NodeCG bundles in the `bundles/` directory.

3. **Build and start the container:**

   ```sh
   docker compose up -d --build
   ```

4. **Access NodeCG:**
   Open your browser and go to [http://localhost:9090](http://localhost:9090)

5. **Logs:**
   To view logs, run:
   ```sh
   docker compose logs -f
   ```

## Project Structure

- `Dockerfile` – Builds the NodeCG image
- `docker-compose.yml` – Orchestrates the container
- `bundles/` – Place your custom NodeCG bundles here
- `package.json` – Required file for running NodeCG as a package

## Credits

This project uses [NodeCG](https://github.com/nodecg/nodecg), an open-source framework for broadcast graphics and automation. All credit for NodeCG goes to its original authors and contributors.

## License

MIT
