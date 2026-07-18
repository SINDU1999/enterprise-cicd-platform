pipeline {

    agent any

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    parameters {
        choice(
            name: 'OPERATION',
            choices: [
                'Database Operations',
                'Execute Query',
                'Deployment Validation',
                'Backup Verification'
            ],
            description: 'Select CloudOps Operation'
        )
    }

    stages {

        stage('Initialize Pipeline') {
            steps {
                echo "==========================================="
                echo "Enterprise AWS CockroachDB Platform"
                echo "CloudOps Automation Pipeline"
                echo "==========================================="
                echo "Build Number : ${env.BUILD_NUMBER}"
                echo "Workspace    : ${env.WORKSPACE}"
            }
        }

        stage('Execute Selected Operation') {

            steps {

                script {

                    if (params.OPERATION == "Database Operations") {

                        sh 'chmod +x scripts/database-operations.sh'
                        sh './scripts/database-operations.sh'

                    }

                    else if (params.OPERATION == "Execute Query") {

                        sh 'chmod +x scripts/execute-query.sh'
                        sh './scripts/execute-query.sh'

                    }

                    else if (params.OPERATION == "Deployment Validation") {

                        sh 'chmod +x scripts/deployment-validation.sh'
                        sh './scripts/deployment-validation.sh'

                    }

                    else if (params.OPERATION == "Backup Verification") {

                        sh 'chmod +x scripts/backup-verification.sh'
                        sh './scripts/backup-verification.sh'

                    }

                }

            }

        }

    }

    post {

        success {

            echo "==========================================="
            echo "CloudOps Operation Completed Successfully"
            echo "==========================================="

        }

        failure {

            echo "==========================================="
            echo "CloudOps Operation Failed"
            echo "==========================================="

        }

    }

}