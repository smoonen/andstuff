server {
  listen 80;
  server_name groupsched.com www.groupsched.com;

  location / {
    rewrite .* http://gospelsoftware.com/ break;
  }
}

