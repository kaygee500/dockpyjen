pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker build -t hello_there . "
            }
        }
        def IMAGE_ID= sh "${(docker images --filter=reference=image_name --format "{{.ID}}")}"

        stage('Test') {
            steps {
                echo 'Testing..'
                sh "trivy image -f table --severity HIGH ${IMAGE_ID}"
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