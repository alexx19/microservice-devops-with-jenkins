pipeline {
    agent { dockerfile true }
    environment{
        PATH = "/var/lib/jenkins/apache-maven-3.8.1/bin:$PATH"
    }
    stages {
        stage('Login Docker ') {
            steps {
                sh 'docker login --username=$DOCKER_HUB_LOGIN_USR --password=$DOCKER_HUB_LOGIN_PSW'
            }
        }
        stage('Maven Build') {
              steps {
                sh 'env'
                sh 'mvn -v'
                sh 'mvn clean install dependency:resolve-plugins dependency:go-offline -Dsurefire.useSystemClassLoader=false'
                sh 'docker build -t microservice-demo:${BUILD_ID} .'
              }
        }
    }
}
