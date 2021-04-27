pipeline {
    agent any
    stages {
        stage('Maven Build') {
              steps {
                sh 'mvn -v'
                sh 'env'
                sh 'mvn clean install dependency:resolve-plugins dependency:go-offline -Dsurefire.useSystemClassLoader=false'
                sh 'docker build -t microservice-demo .'
              }
        }
    }
}
