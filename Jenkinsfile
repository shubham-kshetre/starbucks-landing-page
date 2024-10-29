pipeline {
    agent any
    environment {
        USERNAME = credentials('DOCKER_USERNAME')
        PASSWORD = credentials('DOCKER_PASSWORD')
        REGISTRY = credentials('DOCKER_REGISTRY')
    }
    stages {
        stage('Checout') {
            steps {
             checkout scm       
            }
        }
        stage('pre-build') {
            steps {
                sh 'echo ${PASSWORD} | docker login --username ${USERNAME} --password-stdin'
            }
        }

    }
}
