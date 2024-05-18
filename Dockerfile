FROM python:3.9

WORKDIR /app

# Copy the requirements file into the container at /app
COPY app/requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Expose port
EXPOSE 8501

# Command to run the application
CMD ["streamlit", "run", "app.py"]
