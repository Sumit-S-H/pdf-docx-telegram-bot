# Use Python 3.11 to avoid compatibility issues
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Make port available (Render uses $PORT)
EXPOSE 10000

# Run the bot
CMD ["python", "bot.py"]
