FROM --platform=amd64 node:22-alpine

# Install dependencies
RUN apk update && apk add --no-cache \
    build-base \
    python3 \
    py3-pip \
    python3-dev \
    libffi-dev \
    openssl-dev \
    git


# Copy NodeCG bundles
COPY ./package.json /opt/nodecg/package.json

# Copy NodeCG bundles
COPY ./bundles /opt/nodecg/bundles

# Set working directory
WORKDIR /opt/nodecg

# Install NodeCG
RUN npm install

# Start NodeCG
CMD ["npx", "nodecg", "start"]