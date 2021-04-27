pipeline {
    agent any
    environment{
        PATH = "/var/lib/jenkins/apache-maven-3.8.1/bin:$PATH"
    }
    stages {
        stage('Maven Build') {
              steps {
                sh 'env'
                sh 'mvn -v'
                sh 'mvn clean install dependency:resolve-plugins dependency:go-offline -Dsurefire.useSystemClassLoader=false'
                sh 'docker build -t microservice-demo:$env.BUILD_ID .'
              }
        }
    }
}
