pipeline {
  agent any
  stages {
    stage('Checkout') { steps { checkout scm } }
    stage('Build') { steps { bat 'build.bat' } }
    stage('Test') { steps { bat 'test.bat' } }
    stage('Package') { step {bat 'package.bat' } }
  }
  post{
    success{ archiveArtifacts artifacts: 'dist/**', fingerprint: true }
    failure { echo 'CI pipeline failed' }
  }
}
