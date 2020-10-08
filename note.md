```
brew install nginx
PATH=/home/linuxbrew/.linuxbrew/bin:$PATH

abtnode init -f
ABT_NODE_HTTP_PORT=8080 abtnode start

nginx -t -c /workspace/gitpodapp/nginx/nginx.conf -p /workspace/gitpodapp/nginx
nginx -c /workspace/gitpodapp/nginx/nginx.conf -p /workspace/gitpodapp/nginx
```

nginx 反向代理测试
nginx /admin丢失
ABT_NODE_HTTP_PORT=8080 abtnode start 后 8080端口未启动