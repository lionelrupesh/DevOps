pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building the code"
                dir('./docker/docker-examples/') {
                sh 'docker image build -t suryaraj/devops-evening:v1.$BUILD_NUMBER .'
            }
        }
        }
        stage('DeployStaging') {
            steps {
                echo "Deploying to staging env"
                sh 'docker container stop my-app || true'
                sh 'docker container rm my-app || true'
                sh 'docker run -itd --name my-app -p 8081:3000 suryaraj/devops-evening:v1.$BUILD_NUMBER'
            }
        }  
        stage('DeployProd') {
            steps {
                echo "Deploying to prod env"
            }
        }    
    }
}
