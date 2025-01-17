sudo apt update
sudo apt install -y git
sudo apt install -y pip
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


sudo mkdir -p backend
cd backend
sudo git clone https://github.com/suyttthideptrai/SS1_2023_StableMatchingSolver_Backend.git .
sudo git checkout deploy
sudo git pull
cd ..
sudo mkdir -p frontend
cd frontend
sudo git clone https://github.com/suyttthideptrai/SS2-game-theory-solver.git .
sudo git checkout deploy
sudo git pull
cd ..