FROM python:3.12-slim
WORKDIR /app
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY project-source.zip /tmp/project-source.zip
RUN python -m zipfile -e /tmp/project-source.zip /app && rm /tmp/project-source.zip
CMD ["python", "start_hosted.py"]
