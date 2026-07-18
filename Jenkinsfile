pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Database Operations') {
            steps {
                sh '''
                    chmod +x scripts/database-operations.sh
                    ./scripts/database-operations.sh
                '''
            }
        }

        stage('Execute Query') {
            steps {
                sh '''
                    chmod +x scripts/execute-query.sh
                    ./scripts/execute-query.sh
                '''
            }
        }

        stage('Deployment Validation') {
            steps {
                sh '''
                    chmod +x scripts/deployment-validation.sh
                    ./scripts/deployment-validation.sh
                '''
            }
        }

    }
}