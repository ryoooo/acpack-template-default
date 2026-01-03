FROM mcr.microsoft.com/devcontainers/python:3.13

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Install Node.js for MCP servers
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# Install common tools
RUN apt-get update && apt-get install -y \
    fd-find \
    ripgrep \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Create symlinks for fd
RUN ln -s $(which fdfind) /usr/local/bin/fd || true
