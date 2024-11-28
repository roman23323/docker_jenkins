FROM jenkins/jenkins:lts

ENV PORT 8080
ENV JENKINS_OPTS --httpPort=$PORT

ENTRYPOINT ["/bin/sh", "-c", "exec java -jar /usr/share/jenkins/jenkins.war $JENKINS_OPTS"]