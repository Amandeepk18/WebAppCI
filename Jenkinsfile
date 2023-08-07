pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-creds') {
                        def dockerImage = docker.build("amandeepk0018/my_web_app:${env.BUILD_NUMBER}")
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
