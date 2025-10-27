# Use official minimal python base
FROM python:3.11-slim

# set workdir
WORKDIR /app

# install dependencies
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy code
COPY app /app

# expose port used by uvicorn
EXPOSE 80

# start command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

