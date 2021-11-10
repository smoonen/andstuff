server {
  listen 80;
  server_name fuquaybible.com;

  location / {
    root /home/andstuff/www/fuquaybible.com;
    index index.html index.htm;
  }
}

server {
  listen 80;
  server_name www.fuquaybible.com theopolisbible.com www.theopolisbible.com athanasiusbible.com www.athanasiusbible.com birminghambible.com www.birminghambible.com bhbible.com www.bhbible.com;

  location / {
    rewrite .* http://fuquaybible.com/ break;
  }
}
