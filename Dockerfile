FROM tomcat:8.0.20-jre8
## Dummy text to test 12
#Maintiner appscloudit
COPY target/sparkjava-hello-world-2.0*.war /usr/local/tomcat/webapps/java-web-app.war
