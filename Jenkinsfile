pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from SCM
                git branch: 'https://github.com/karthiksalavadi/Terrafrom_New'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    // Initialize Terraform
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Terraform Plan
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Apply Terraform changes
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
    
    post {
        always {
            script {
                // Optional cleanup actions
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}

