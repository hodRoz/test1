
FROM python:3.7-slim


WORKDIR /app


COPY . /app


RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 80

ENTRYPOINT ["python", "convert_image_to_pdf.py"]

