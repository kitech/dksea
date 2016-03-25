#!/bin/sh

### backup docker data mannually
#
# 使用git仓库备份，定时备份
#

# env
# $GITPASS

function backup()
{
    cd /dkvol
    git pull
    cp -v /toxecho/toxecho.data .
    git add -v toxecho.data
    git commit -a -m "update dkvol"
    git push origin master
}

# 配置自动提交
function preset()
{
    true
    echo "machine git.oschina.net" > $HOME/.netrc
    echo "login kitech" >> $HOME/.netrc
    echo "password $GITPASS" >> $HOME/.netrc
    echo "" >> $HOME/.netrc

    git config --global user.name "dktoxbot"
    git config --global user.email "drswinghead@sina.com"
}


function main()
{
    preset;
    while true; do
        backup;
        sleep 30;
    done
}

main;

