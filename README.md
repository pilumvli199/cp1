# Crypto Phase-1 Bot (Redis + OpenAI + Telegram)

This package is Phase-1 of a crypto bot that:
- reads spot prices from Binance every 5 minutes,
- stores last prices in Redis,
- sends a "Bot online" alert and recurring price summaries to Telegram,
- sends a compact snapshot to OpenAI for a one-line analysis included in the Telegram message.

## Files
- `crypto_phase1_bot_main.py` — main program (placeholder in this zip; full file exists in canvas).
- `requirements.txt` — Python dependencies.
- `.env.example` — template for environment variables.
- `Dockerfile` — Docker image for deployment.
- `Procfile` — simple start command for platforms that use Procfile.

## Local setup
1. Copy `.env.example` to `.env` and fill the values.
2. Create a virtualenv and install dependencies:
   ```bash
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```
3. Run:
   ```bash
   python crypto_phase1_bot_main.py
   ```

## Environment variables (set these in Railway secrets / environment):
- `REDIS_URL` — e.g. `redis://user:pass@host:6379/0`
- `TELEGRAM_BOT_TOKEN`
- `TELEGRAM_CHAT_ID`
- `OPENAI_API_KEY`

## Deploying to Railway
Option A — Auto deploy using Dockerfile (recommended):
1. Create a new project on Railway and connect your GitHub repo (or push code directly).
2. Add the environment variables in Railway's dashboard (Environment > Variables).
3. Railway will detect the Dockerfile and build the image; the service will run the CMD defined in the Dockerfile.

Option B — Using Railway's Python service (if not using Docker):
1. Add `Procfile` to the repo containing: `worker: python crypto_phase1_bot_main.py`
2. Set environment variables in Railway dashboard.
3. Create a service and deploy.

## Notes
- The file `crypto_phase1_bot_main.py` in this zip is a placeholder to avoid duplicating large code in chat. If you want the runnable file included in the zip (full code), reply and I'll update the zip to include the full implementation.
