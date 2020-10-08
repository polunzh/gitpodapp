echo init
brew install nginx
PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
npm install @abtnode/cli -g
abtnode init -f
ABT_NODE_HTTP_PORT=8080 abtnode start
abtnode deploy .