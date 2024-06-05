FROM python:3.11-alpine

# Add a workspace user
RUN adduser --home /workspace --disabled-password workspace

# Install build dependencies for cffi and other packages
RUN apk update && \
    apk add --no-cache \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    && rm -rf /var/cache/apk/*

# Python dependencies
COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt && rm -f /tmp/requirements.txt

# Switch to workspace user
USER workspace

# Set the working directory
WORKDIR /workspace
COPY test_input.json workspace

# Environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

CMD ["bash", "start.sh"]
