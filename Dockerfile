# syntax=docker/dockerfile:1

# ---------- Stage 1: Build ----------
FROM python:3.8-slim-buster AS builder

WORKDIR /app

COPY requirements.txt .

# Install dependencies into a separate folder
RUN pip install --no-cache-dir --user -r requirements.txt

# ---------- Stage 2: Runtime ----------
FROM python:3.8-slim-buster

WORKDIR /app

# Copy installed dependencies from builder
COPY --from=builder /root/.local /root/.local

# Copy application code
COPY . .

# Add local binaries to PATH
ENV PATH=/root/.local/bin:$PATH

# Run app
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
