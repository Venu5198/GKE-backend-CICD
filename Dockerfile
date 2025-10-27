# Use Python base image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file first (for caching)
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY app /app

# Expose port used by the FastAPI app
EXPOSE 8000

# Command to run the application
CMD ["python", "main.py"]

