FROM httpd:2.4

COPY *.html /usr/local/apache2/htdocs/index.html

EXPOSE 67

RUN sed -i 's/Listen 80/Listen 67/' /usr/local/apache2/conf/httpd.conf

CMD ["httpd-foreground"]