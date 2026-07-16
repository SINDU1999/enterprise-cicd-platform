pipeline {
    agent any

    environment {
        AWS_REGION = "ap-south-1"
        ECR_REPOSITORY = "enterprise-nginx"
    }

    stages {

        stage('Checkout Source') {
            steps {
                checkout scm
            }
        }

        stage('Verify IRSA') {
            steps {
                sh '''
                echo "===== AWS Identity ====="
                aws sts get-caller-identity --no-cli-pager

                echo ""
                echo "===== EKS Nodes ====="
                aws eks update-kubeconfig \
                  --name cockroach-platform-dev-eks \
                  --region ap-south-1

                kubectl get nodes

                echo ""
                echo "===== ECR ====="
                aws ecr describe-repositories \
                  --repository-names enterprise-nginx \
                  --region ap-south-1
                '''
            }
        }

    }

    post {
        success {
            echo "IRSA verification successful."
        }
    }
}