# Multi-stage Dockerfile for Flask Blog App v2 Backend
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    FLASK_APP=main.py \
    FLASK_ENV=production

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    libffi-dev \
    libssl-dev \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user for security
RUN useradd --create-home --shell /bin/bash app

# Set working directory
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Create necessary directories
RUN mkdir -p logs uploads static/profile_pics

# Change ownership to app user
RUN chown -R app:app /app

# Switch to non-root user
USER app

# Create SQLite database directory with proper permissions
RUN mkdir -p instance

# Expose the application port
EXPOSE 5000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD python -c "import requests; requests.get('http://localhost:5000/api/health', timeout=5)" || exit 1

# Default command to run the Flask application
CMD ["python", "main.py"]

# Alternative commands for different services:
# For Celery Worker: CMD ["celery", "-A", "main.celery", "worker", "-l", "info"]
# For Celery Beat: CMD ["celery", "-A", "main.celery", "beat", "--max-interval", "1", "-l", "info"]