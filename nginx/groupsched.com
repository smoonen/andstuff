server {
  listen 80;
  server_name groupsched.com;

  location / {
    rewrite .* http://www.groupsched.com/ break;
  }
}

