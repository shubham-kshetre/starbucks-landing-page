pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('pre-build') {
            steps {
                sh 'echo "$DOCKER_USERNAME"'
            }
            // steps {
            //     echo 'docker --version'
            // }
            // steps {
            //     echo "$DOCKER_PASSWORD" | docker login "$DOCKER_REGISTRY" --username "$DOCKER_USERNAME" --password-stdin
            // }
            
        }
    }
}
