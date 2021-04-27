pipeline {
    agent any
    tools {
        maven 'Maven 3.8.1'
    }
    stages {
        stage('Maven Build') {
              steps {
                sh '''
                    export M2_HOME=/var/lib/jenkins/apache-maven-3.8.1
                    export M2=$M2_HOME/bin
                    export PATH=$M2:$PATH
                '''
                sh 'mvn -v'
                sh 'env'
                sh 'mvn clean install dependency:resolve-plugins dependency:go-offline -Dsurefire.useSystemClassLoader=false'
                sh 'docker build -t microservice-demo .'
              }
        }
    }
}
