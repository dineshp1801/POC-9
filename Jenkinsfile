pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/your-org/your-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t myapp:latest ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    sh """
                    docker tag myapp:latest mydockerhubuser/myapp:latest
                    docker push mydockerhubuser/myapp:latest
                    """
                }
            }
        }

        stage('Deploy with Ansible') {
            steps {
                sh "ansible-playbook ansible/deploy.yml"
            }
        }
    }

    post {
        success {
            echo "Deployment Successful"
        }
        failure {
            echo "Build or Deployment Failed"
        }
    }
}
