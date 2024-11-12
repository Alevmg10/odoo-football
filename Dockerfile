FROM python:3.11

# Install Scrapy and any other Python dependencies
WORKDIR /usr/src/app
COPY requirements.txt .

RUN pip install --no-cache -r requirements.txt

# Copy your Scrapy project into the container
#COPY ./scrapy /app/scrapy

CMD ["scrapy", "startproject", "data_scraper"]