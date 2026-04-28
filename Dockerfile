# --- STAGE 1: Builder ---
# This stage installs the dependencies
FROM python:3.8-slim-buster AS builder

WORKDIR /app

# Install dependencies into a local folder (--user) to easily copy them later
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt


# --- STAGE 2: Final Runtime ---
# This is the actual image that will be pushed to Docker Hub
FROM python:3.8-slim-buster

WORKDIR /app

# Copy only the installed python packages from the builder stage
# Python installs --user packages in /root/.local
COPY --from=builder /root/.local /root/.local
COPY . .

# Update PATH so the system can find the installed Flask packages
ENV PATH=/root/.local/bin:$PATH

# Expose the port Flask runs on
EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
