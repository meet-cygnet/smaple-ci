FROM nginx:1.25.2-alpine
LABEL maintainer="Meet Soni"
LABEL version="1.0"
LABEL organization="Cygnet Infotech"

# this will copy index.html to the nginx default directory
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80


HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost/ || exit 1

