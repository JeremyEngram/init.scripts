wget https://nodejs.org/dist/v20.9.0/node-v20.9.0-linux-x64.tar.xz
sudo npm install -g flowise
npx flowise start


npx flowise start --FLOWISE_USERNAME=user --FLOWISE_PASSWORD=1234
xdg-open http://localhost:3000

docker build --no-cache -t flowise .
docker run -d --name flowise -p 4000:4000 flowise
xdg-open http://localhost:4000
docker stop flowise


git clone https://github.com/FlowiseAI/Flowise.git
cd Flowise
yarn install
yarn build
yarn start



