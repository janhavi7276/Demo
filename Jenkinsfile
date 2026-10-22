pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                script {
                    if (isUnix()) { sh './build.sh' } else { bat 'build.bat' }
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    if (isUnix()) { sh './test.sh' } else { bat 'test.bat' }
                }
            }
        }
        stage('Package') {
            steps {
                script {
                    if (isUnix()) { sh './package.sh' } else { bat 'package.bat' }
                }
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: 'dist/**', fingerprint: true, allowEmptyArchive: true
            echo 'CI pipeline succeeded'
        }
        failure {
            echo 'CI pipeline failed'
        }
    }
}
