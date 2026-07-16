pipeline {
    agent {
        kubernetes {
            label 'kaniko'
        }
    }

    environment {
        AWS_REGION = "ap-south-1"
        AWS_ACCOUNT_ID = "827257543859"
        ECR_REPOSITORY = "enterprise-nginx"
    }

    stages {

        stage('Checkout Source') {
            steps {
                checkout scm
            }
        }

        stage('Verify Kubernetes Agent') {
            steps {
                sh '''
                echo "===================================="
                echo "Running inside Kubernetes Agent"
                echo "===================================="

                hostname
                pwd
                ls -la

                echo ""
                echo "Container Information:"
                cat /etc/os-release || true
                '''
            }
        }

        stage('Verify Tools') {
            steps {
                sh '''
                echo "===================================="
                echo "Verifying Installed Tools"
                echo "===================================="

                git --version
                aws --version
                kubectl version --client
                helm version
                '''
            }
        }

        stage('AWS Authentication') {
            steps {
                withAWS(credentials: 'aws-cloudops', region: "${AWS_REGION}") {
                    sh '''
                    echo "===================================="
                    echo "Authenticating with AWS"
                    echo "===================================="

                    aws sts get-caller-identity
                    '''
                }
            }
        }

        stage('Verify Amazon ECR') {
            steps {
                withAWS(credentials: 'aws-cloudops', region: "${AWS_REGION}") {
                    sh '''
                    echo "===================================="
                    echo "Verifying Amazon ECR"
                    echo "===================================="

                    aws ecr describe-repositories \
                        --repository-names ${ECR_REPOSITORY} \
                        --region ${AWS_REGION}
                    '''
                }
            }
        }

        stage('Verify EKS Access') {
            steps {
                withAWS(credentials: 'aws-cloudops', region: "${AWS_REGION}") {
                    sh '''
                    echo "===================================="
                    echo "Verifying Amazon EKS"
                    echo "===================================="

                    aws eks update-kubeconfig \
                        --name cockroach-platform-dev-eks \
                        --region ${AWS_REGION}

                    kubectl get nodes
                    '''
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline execution completed."
        }

        success {
            echo "Pipeline executed successfully."
        }

        failure {
            echo "Pipeline execution failed."
        }
    }
}