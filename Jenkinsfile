pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker build -t hello_there . "
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
                sh "trivy image -f table --severity HIGH hello_there"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh "docker run --rm hello_there"
            }
        }
    }
}