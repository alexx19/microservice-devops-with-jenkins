pipeline {
    agent none
    stages {
        stage('Maven Build') {
            agent {
                docker {
                  image 'openjdk:11-jre-slim'
                }
              }
              steps {
                sh 'mvn clean install'
              }
        }
    }
}



3.8.1
wget http://mirrors.estointernet.in/apache/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz


tar -xvzf apache-maven-3.8.1-bin.tar.gz && cd apache-maven-3.8.1