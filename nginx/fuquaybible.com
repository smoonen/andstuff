server {
  listen 80;
  server_name fuquaybible.com;

  location / {
    rewrite ^(.*)$ https://fuquaybible.com/$1 break;
  }
}

server {
  listen              443;
  ssl                 on;
  ssl_certificate     /home/smoonen/cert/fuquaybible.com.crt;
  ssl_certificate_key /home/smoonen/cert/fuquaybible.com.key;
  server_name         fuquaybible.com;

  location / {
    root /home/andstuff/www/fuquaybible.com;
    try_files $uri $uri.html $uri $uri/index.html =404;
    index index.html index.htm;
    charset utf-8;
  }

  location /feed {
    root /home/andstuff/www/fuquaybible.com;
    try_files $uri $uri.xml $uri $uri/index.html =404;
    types { } default_type "application/atom+xml; charset=utf-8";
  }
}

server {
  listen 80;
  server_name www.fuquaybible.com theopolisbible.com www.theopolisbible.com athanasiusbible.com www.athanasiusbible.com birminghambible.com www.birminghambible.com bhbible.com www.bhbible.com;

  location / {
    rewrite .* http://fuquaybible.com/ break;
  }
}
