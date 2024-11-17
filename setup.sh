sudo apt update
sudo apt install git
sudo apt install pip
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