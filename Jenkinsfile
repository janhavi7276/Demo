pipeline {
  agent any
  parameters {
    choice(name: 'ENVIRONMENT',
           choices: ['Staging', 'Production']) }
  stages {
    stage('Checkout') { steps { checkout scm } }
    stage('Quality') { parallel {
      stage('Build') { steps { sh 'echo Build'} }
      stage('Lint') { steps { sh 'echo Lint'} } } }
    stage('Test') { steps { sh 'echo Test ' } }
    stage('Package') { steps { sh 'echo package' } }
  }
}
