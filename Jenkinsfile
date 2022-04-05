pipeline {
    agent { docker { image 'node:16.13.1-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'node --version'
            }
        }
        stage('package') {
            steps {
                // sh 'docker ps'
                app = docker.build("bhubr/hellonode")
            }
        }
    }
}