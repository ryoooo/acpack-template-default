#!/bin/bash
# Initialize firewall rules for MCP HTTP servers
# This script is run during devcontainer creation

set -e

# Allowed domains for MCP HTTP connections
ALLOWED_DOMAINS=(
    # Add your MCP HTTP server domains here
    # Example: "api.example.com"
)

echo "Firewall initialization complete."
echo "Allowed MCP domains: ${ALLOWED_DOMAINS[*]:-none}"
