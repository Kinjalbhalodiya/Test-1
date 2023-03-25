#!/bin/bash
sudo chmod -R 777 /home/newubuntu/app-demo

#navigate to working directory
cd /home/newubuntu/app-demo

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#install node modules
npm install

#start node app in background
node index.js > index.out.log 2> index.err.log < /dev/null &
