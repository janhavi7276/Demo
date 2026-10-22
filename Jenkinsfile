pipeline {
  agent any

  parameters {
    choice(name: 'ENVIRONMENT', choices: ['staging', 'production'],
           description: 'Target')
  }

  stages {
    stage('Tests') {
      parallel {
        stage('Unit') {
          steps { sh 'echo Unit tests' }
        }
        stage('Integration') {
          steps { sh 'echo Integration tests' }
        }
      }
    }

    stage('Package') {
      steps {
        sh 'ls -la'
        echo "Packaging for ${params.ENVIRONMENT}"
        sh 'bash package.sh'
      }
    }
  }

  post {
    success { archiveArtifacts artifacts: 'dist/**', allowEmptyArchive: true }
    failure { echo 'CI pipeline failed' }
  }
}
