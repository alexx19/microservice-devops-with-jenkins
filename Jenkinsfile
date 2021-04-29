pipeline {
    agent { dockerfile true }
    environment{
        PATH = "/var/lib/jenkins/apache-maven-3.8.1/bin:$PATH"
    }
    stages {
        stage('Login Docker') {
            steps {
                sh 'docker login -u=$DOCKER_HUB_LOGIN_USR -p=$DOCKER_HUB_LOGIN_PSW'
            }
        }
        stage('Building jar...') {
              steps {
                sh 'mvn clean install dependency:resolve-plugins dependency:go-offline -Dsurefire.useSystemClassLoader=false'
                sh 'docker build -t microservice-demo/${env.BUILD_ID} .'
              }
        }
        stage('Docker run...') {
              steps {
                sh 'docker run -p 8081:8081 microservice-demo/${env.BUILD_ID}'
                sh 'sleep 90'
              }
        }
    }
}
