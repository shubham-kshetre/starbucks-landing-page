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
        stage('build'){
            steps {
                sh 'docker build -t nginx-webpage .'
            }
        }
        stage('push'){
            steps {
                sh 'docker tag nginx-webpage:latest ${USERNAME}/starbucks-webpage:latest'
                sh 'docker push ${USERNAME}/starbucks-webpage:latest'
            }
        }

    }
}
