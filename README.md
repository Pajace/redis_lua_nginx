# redis_lua_nginx

## docker-lua-redis-nginx
It is a docker image of Ngnix with lua-redis library

## docker-lua-redis-nginx-config
It is a docker image for data container, only store nginx config file for docker-static-web

## docker-lua-redis-nginx-deploy
It is a demo project, for create docker-static-web and docker-static-web-config

# How to use it
Fill your AWS info in docker-lua-redis-nginx/build.sh and docker-lua-redis-nginx-config/build.sh and run it.

(or just build on local, `docker build -t lua_redis_nginx/static-web .` and `docker build -t lua_redis_nginx/static-web-config .`)

It will create two docker image **lua_redis_nginx/static-web** and **lua_redis_nginx/static-web-config** with versino.

Open **docker-lua-redis-nginx-deply/env_static** and fill your info and your docker image version then run `./static up` or `./static down` to up or down it.

# How to config it

In file **docker-lua-redis-nginx-config/config.d/nginx_server.conf.tmpl**, there is a `location ^~ /web_page/` statement, 
This is mean your key of REDIS must start with **/web_page/**, and you can add your own location in it.