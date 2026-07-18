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

    }
}