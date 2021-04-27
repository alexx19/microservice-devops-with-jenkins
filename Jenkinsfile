pipeline {
    agent any
    tools {
        maven 'Maven 3.8.1'
        jdk 'jdk11'
    }
    stages {
        stage('Maven Build') {
              steps {
                sh 'mvn clean install'
              }
        }
    }
}