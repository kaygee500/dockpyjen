pipeline {
    agent {label "linux"}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh """
                 docker build -t hello_there .
                """
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh """
                  docker run --rm hello_there
                """
            }
        }
    }
}