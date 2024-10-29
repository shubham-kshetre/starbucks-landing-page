pipeline {
    agent any
    environment {
        USERNAME = credentials('DOCKER_USERNAME')
    }
    stages {
        stage('pre-build') {
            steps {
                sh 'echo ${DOCKER_USERNAME}'
            }
        }

    }
}
