Docker compose for BE FE deployment. 
Currently under development, might not be running as expected.
Tested with Ubuntu 24.04. gi gi day LTS


Step 1: sudo bash setup.sh

Step 2: nano /frontend/.env (Change REACT_APP_BACKEND_URL to EC2 instance/ VPS public IP)

Step 2: docker compose up --build  (or -d idk :v)


TODO: dynamically set REACT_APP_ backend port & url as environment variables
TODO: compile static FE resource instead of redirect to 3000 port local node development server