FROM python:3.9

WORKDIR /app

RUN pip3 install gunicorn==20.1.0
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["gunicorn", "--bind", "0.0.0.0:4205", "app:app"]
