pipeline {
    environment {
      imagename = "bhubr/hellonode"
      dockerImage = ''
    }
    agent { docker { image 'node:16.13.1-alpine' } }
    stages {
        stage('Initialize'){
            def dockerHome = tool 'myDocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
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