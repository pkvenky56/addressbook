sudo yum install git -y
#sudo yum install java-1.8.0-openjdk-devel -y
#sudo yum install maven -y
sudo yum install docker -y
sudo systemctl start docker

if [ -d "addressbook" ]
then
  echo "repo is cloned and exists"
  cd /home/ec2-user/addressbook
  git pull origin april-anisble
else
  git clone  https://github.com/preethid/addressbook.git
  cd addressbook
  git checkout april-anisble
fi

# sudo docker build -t $1 /home/ec2-user/addressbook
#devopstrainer/java-mvn-privaterepos:1