#Install script
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt update -y ;
sudo apt install docker apt-transport-https ca-certificates curl software-properties-common -y ;
sudo mkdir -p /etc/apt/keyrings ;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg ;
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null ;
sudo apt update -y ;
# if there is a gpg error with apt update
#sudo chmod a+r /etc/apt/keyrings/docker.gpg
#sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y ;
clear ;
sudo docker run hello-world ;
