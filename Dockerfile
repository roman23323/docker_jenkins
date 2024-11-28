FROM jenkins/jenkins:lts
RUN apt-get update && apt-get install -y git

# Настройка переменных окружения для Render
ENV JENKINS_OPTS "--prefix=/jenkins"
ENV JENKINS_HOME /data/jenkins_home

# Создание директории для хранения данных Jenkins
RUN mkdir -p /data/jenkins_home
VOLUME /data/jenkins_home

EXPOSE 8080 50000
CMD ["jenkins.sh"]