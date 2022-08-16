FROM tomcat

RUN apt-get update && apt-get -y upgrade

ADD /target/proiect.war /var/lib/tomcat9/webapps

EXPOSE 8090

CMD chmod 777 /var/lib/tomcat/bin/catalina.sh
CMD [“catalina.sh”, “run”]