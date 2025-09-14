FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
# Use environment variables; run as a worker
CMD ["python", "crypto_phase1_bot_main.py"]
