#!/bin/bash
# deploy.sh

# 拉取最新代码
git pull origin main

# 安装依赖（确保生产依赖正确）
npm install --production

# 执行编译（如果使用原生TS执行可省略，但生产环境推荐编译）
npm run build

# 重启应用（使用像PM2这样的进程管理器）
pm2 restart your-app-name || pm2 start dist/server.js --name my-ts-app