server {
  listen 80;
  server_name fullvalence.com www.fullvalence.com;

  location / {
    root /home/andstuff/www/fullvalence.com;
    index index.html index.htm;
  }
}

