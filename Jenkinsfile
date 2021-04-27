pipeline {
    agent any
    stages {
        stage('Maven Build') {
              steps {
                mvn -v
                mvn clean install dependency:resolve-plugins dependency:go-offline -Dsurefire.useSystemClassLoader=false
              }
        }
    }
}
