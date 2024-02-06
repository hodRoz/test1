
FROM python:3.7-slim

WORKDIR /app

RUN apt update

RUN apt install -y curl

RUN curl -sL https://netfree.link/dl/unix-ca.sh | sh

RUN pip config set global.cert /usr/lib/ssl/certs/ca-certificates.crt

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "convert_image_to_pdf.py"]

