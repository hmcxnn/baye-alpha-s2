# 使用官方的Nginx镜像作为基础镜像
FROM nginx:stable-alpine

# 设置工作目录
WORKDIR /usr/share/nginx/html

# 复制项目文件到容器中
COPY . .

# 复制Nginx配置文件
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露80端口
EXPOSE 80

# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]
