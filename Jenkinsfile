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
                sh './scripts/database-operations.sh'
            }
        }
    }
}