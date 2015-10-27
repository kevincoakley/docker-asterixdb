FROM ansible/ubuntu14.04-ansible:stable 
MAINTAINER Kevin Coakley <kcoakley@sdsc.edu>

ADD ansible /srv/ansible 
WORKDIR /srv/ansible

RUN ansible-playbook main.yml -c local 

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre/
ENV MANAGIX_HOME /opt/asterixdb

EXPOSE 19001
CMD ["/usr/bin/supervisord"]
