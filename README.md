# gitpodapp

[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/linchen1987/gitpodapp)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/linchen1987/gitpodapp)

# start
```
abtnode init -f
ABT_NODE_HTTP_PORT=8080 abtnode start
abtnode deploy .
```

# 问题
- 不在docker环境中，且无法获取internal ip 和 external ip
- 第一次启动后，8080端口未启动。原因：nginx.conf 中未生成 server {}
- 安装一个blocklet后，会成功启动8080端口。（nginx.conf 生成了 server {}）
- nginx.config 中 location /admin丢失，所以无法通过 /admin 访问dashboard，只能通过 8089端口访问 dashboard
- 安装并启动某blocklet后，可以通过 /admin/xxx 访问 （虽然location /admin丢了，但是系统为blocklet自动生成的location没有丢)。不过此时nginx会返回307，但是browser并不会自动跳转。需要通过 /admin/xxx/ 访问（最后加 /）

# tip
- 80端口无权限，需要用8080端口启动 ABT_NODE_HTTP_PORT=8080 abtnode start
- 无法通过脚本在执行abtnode start 后立即执行 abtnode deploy ，因为此时node还没有 initialized，需要扫码登录之后再执行

