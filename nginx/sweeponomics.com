server {
  listen 80;
  server_name sweeponomics.com www.sweeponomics.com;

  location / {
    root /home/andstuff/www/sweeponomics.com;
    index index.html index.htm;
  }
}

