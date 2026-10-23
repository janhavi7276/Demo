pipeline {
  agent any
  parameters {
    choice(name: 'ENVIRONMENT',
           choices: ['Dev', 'Staging', 'Production'],
           description: 'Target environment')
  }
  stages {
    stage('Approve') {
      when { expression { params.ENVIRONMENT == 'Production' } }
      steps { input message: 'Deploy to production?' }
    }
    stage('Deploy') {
      steps { bat "sh Deploy to ${params.ENVIRONMENT}" }
    }
  }
}
                                  
