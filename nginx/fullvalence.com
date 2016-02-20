server {
  listen 80;
  server_name fullvalence.com www.fullvalence.com;

  location / {
    root /var/www/fullvalence.com;
    index index.html index.htm;
  }
}

