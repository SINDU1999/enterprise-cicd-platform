pipeline {
    agent {
        kubernetes {
            label 'kaniko'
        }
    }

    stages {

        stage('Verify Kaniko Agent') {
            steps {
                sh '''
                echo "===== Running Inside Kaniko Pod ====="

                echo "Current User:"
                whoami || true

                echo "AWS Identity:"
                AWS_PAGER="" aws sts get-caller-identity

                echo "Executor:"
                ls /

                echo "Kaniko:"
                ls /kaniko

                echo "Workspace:"
                pwd
                '''
            }
        }

    }
}