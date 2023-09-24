pipeline {
    agent any

    stages {
        stage('Deploy to Staging') {
            steps {
                script {
                    def containerName = 'staginginstance'
                    def isContainerRunning = sh(script: "docker ps -q -f name=${containerName}", returnStatus: true) == 0

                    if (isContainerRunning) {
                        echo "Stopping and removing the '${containerName}' container..."
                        // Stop the container
                        sh "docker stop ${containerName}"
                        // Remove the container
                        sh "docker rm ${containerName}"
                        echo "Container '${containerName}' has been stopped and removed."
                    } else {
                        echo "Container '${containerName}' is not running."
                    }
                }
            }
        }
    }
}
