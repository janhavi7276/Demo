pipeline {
  agent any
  parameters {
    choice(name: 'ENVIRONMENT', choices: ['staging', 'production'],
           description: 'Target')
  }
  stage('Tests') {
    parallel {
        stage('Units') {steps { bat 'echo Unit tests' } }
        stage('Integration') {steps { bat 'echo Integration tests' } }
    }
  }
}
