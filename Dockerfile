#!docker build -t yankchina/gradio-zhconv:1.0 .
FROM python:3.10-slim

LABEL maintainer = "yankchina<yankchina@gmail.com>" \
    version = "1.0.0"

EXPOSE 7860

WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN python3 -m pip install -r /app/requirements.txt

COPY app.py /app/app.py
CMD ["python","/app/app.py"]