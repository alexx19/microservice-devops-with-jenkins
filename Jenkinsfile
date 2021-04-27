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