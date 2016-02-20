server {
  listen 80;
  server_name benevolition.com www.benevolition.com benevolition.org www.benevolition.org;

  location / {
    root /home/andstuff/www/benevolition.com;
    index index.html index.htm;
  }
}

