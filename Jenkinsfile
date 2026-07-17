pipeline {
    agent {
        kubernetes {
            label 'kaniko'
        }
    }

    stages {

        stage('Verify Kaniko') {
            steps {
                container('kaniko') {
                    sh '''
                        echo "===== Running Inside Kaniko Pod ====="

                        echo "Current User:"
                        whoami

                        echo "Working Directory:"
                        pwd

                        echo "Root Directory:"
                        ls -la /

                        echo "Kaniko Directory:"
                        ls -la /kaniko

                        echo "Kaniko Version:"
                        /kaniko/executor version || true
                    '''
                }
            }
        }

    }
}