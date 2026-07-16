pipeline {
    agent any

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

        stage('Verify Tools') {
            steps {
                sh '''
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
                    aws sts get-caller-identity
                    '''
                }
            }
        }

        stage('Verify Amazon ECR') {
            steps {
                withAWS(credentials: 'aws-cloudops', region: "${AWS_REGION}") {
                    sh '''
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
                    aws eks update-kubeconfig \
                      --name cockroach-platform-dev-eks \
                      --region ${AWS_REGION}

                    kubectl get nodes
                    '''
                }
            }
        }
    }
}