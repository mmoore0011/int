FROM python:2.7.18-slim-stretch
RUN useradd -m http
COPY src/index.html /var/www/html/index.html
WORKDIR /var/www/html
USER http
ENTRYPOINT python -m SimpleHTTPServer

