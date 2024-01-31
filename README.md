# PDF images
This is a python application which gets images and creates a PDF file with all the images printed in it.

## Base Docker image

python:3.7-slim

## Build and Run Instructions

To build the Docker image, use the following command:


docker build -t your-image-name .

docker run -v $(pwd)/images:/app/images -v $(pwd)/output:/app/output -e PDF_NAME=birds testimg images