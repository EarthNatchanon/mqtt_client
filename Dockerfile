FROM python:3
WORKDIR /app
COPY requirement.txt .
COPY app.py .
RUN pip install --no-cache-dir --upgrade pip && \
pip install --no-cache-dir -r requirement.txt
CMD ["python", "app.py"]
EXPOSE 5000