pipeline {
    agent any
    environment {
        USERNAME = credentials('DOCKER_USERNAME')
        PASSWORD = credentials('DOCKER_PASSWORD')
        REGISTRY = credentials('DOCKER_REGISTRY')
    }
    stages {
        stage('pre-build') {
            steps {
                sh 'echo ${PASSWORD} | docker login --user ${USERNAME} --password-stdin'
            }
        }

    }
}
