#!/usr/bin/env sh

# 终止一个错误
set -e

# 构建
npm run build

# 进入生成的构建文件夹
cd ./.vuepress/public

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/salutonly/salutonly.github.io.git master

cd -