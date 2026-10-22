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
    stage('Package') { steps { bat 'package.bat' } }
    post{
      success { archiveArtifacts artifacts: 'dist/**' }
      failure { echo 'CI pipeline failed' }
    }
  }
}
