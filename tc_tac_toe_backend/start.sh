#!/usr/bin/env bash
# Start script for the FastAPI backend using uvicorn.
# Uses port 80 to comply with the platform's default start expectations.
# Avoids hardcoding configuration beyond host/port, and leverages installed dependencies.

set -euo pipefail

# Default host/port; can be overridden via environment variables if the platform supports it.
HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-80}"

# Run uvicorn pointing to src.api.main:app
# Note: We set the working directory to the container root so module path resolution works.
exec uvicorn src.api.main:app --host "$HOST" --port "$PORT"
