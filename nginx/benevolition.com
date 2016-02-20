server {
  listen 80;
  server_name benevolition.com www.benevolition.com benevolition.org www.benevolition.org;

  location / {
    root /var/www/benevolition.com;
    index index.html index.htm;
  }
}

