# Configure maven to build java code
1) Install Maven ( host where you want to copy java codes and run as application, it would be generally Jenkins slave)
2) Make usre Java JDK is installed ( this may be alreday installed as part of Jenkins slave configuration)

# Download tomcat and install
wget http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz
gunzip apache-tomcat-9.0.27.tar.gz
tar -xvf apache-tomcat-9.0.27.tar
cd apache-tomcat-9.0.27
cd bin
./startup.sh
./shutdown.sh
# Post build task script
sudo cd /root/apache-tomcat-9.0.27/bin
sudo /root/apache-tomcat-9.0.27/bin/shutdown.sh
sudo cp -pr  /home/jenkins-slave/workspace/mavenproject/target/*.war /root/apache-tomcat-9.0.27/webapps
sudo /root/apache-tomcat-9.0.27/bin/startup.sh
