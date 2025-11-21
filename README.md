# tic-tac-toe-classic-279668-279677

Backend (tc_tac_toe_backend) start command:
- The container is configured to start the FastAPI app with uvicorn via a Procfile.
- Entry: web: bash start.sh
- Command executed: uvicorn src.api.main:app --host 0.0.0.0 --port 80

Notes:
- You can override the host and port by setting HOST and PORT environment variables if supported by your environment.
- The FastAPI application instance is located at src/api/main.py as `app`.