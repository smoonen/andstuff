server {
  listen 80;
  server_name sweeponomics.com www.sweeponomics.com;

  location / {
    root /var/www/sweeponomics.com;
    index index.html index.htm;
  }
}

