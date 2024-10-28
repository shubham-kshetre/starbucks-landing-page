pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('pre-build') {
            steps {
                echo 'docker --version'
            }
        }
    }
}
