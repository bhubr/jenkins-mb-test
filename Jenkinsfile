pipeline {
    environment {
      imagename = "bhubr/hellonode"
      dockerImage = ''
    }
    agent { docker { image 'node:16.13.1-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'node --version'
            }
        }
        stage('package') {
            steps {
              script {
                dockerImage = docker.build imagename
              }
            }
        }
    }
}