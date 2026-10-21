pipeline {
  agent any
  environment { APP_ENV = 'test' }
  stages {
    stage('Checkout') { steps { checkout scm } }
    stage('Build')    { steps { bat 'echo building' } }
    stage('Test')     { steps { bat 'echo Running tests' } }
  }
  post {
    success { echo 'All stages passed' }
    failure { echo 'Something failed' }
  }
}
