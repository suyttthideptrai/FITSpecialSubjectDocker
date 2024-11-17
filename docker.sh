sudo apt update
sudo apt install docker
docker build -t react-springboot-app .
docker run -p 80:80 react-springboot-app