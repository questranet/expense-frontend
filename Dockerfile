FROM        nginx
RUN         rm -rf /usr/share/nginx/html/* /etc/nginx/default.d/*
ADD         expense.conf /etc/nginx/default.d/expense.conf
ADD         nginx.conf /etc/nginx/nginx.conf
ADD         static/ /usr/share/nginx/html/static/
ADD         asset-manifest.json index.html robots.txt /usr/share/nginx/html/