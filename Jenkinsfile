pipeline {
  agent { label 'windows' }   // pin the OS since you use bat

  parameters {
    choice(name: 'ENVIRONMENT', choices: ['staging', 'production'],
           description: 'Target')
  }

  stages {
    stage('Tests') {
      parallel {
        stage('Unit') {
          steps { bat 'echo Unit tests' }
        }
        stage('Integration') {
          steps { bat 'echo Integration tests' }
        }
      }
    }

    stage('Package') {
      steps {
        echo "Packaging for ${params.ENVIRONMENT}"
        bat 'package.bat'
      }
    }
  }

  post {
    success { archiveArtifacts artifacts: 'dist/**' }
    failure { echo 'CI pipeline failed' }
  }
}
