pipeline {
    agent any
    stages {
        stage('Maven Build') {
              steps {
                mvn -v
                mvn clean install
              }
        }
    }
}
