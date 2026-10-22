pipeline {
  agent any
  stages {
    stage('Checkout') { steps { checkout scm } }
    stage('Build') { steps { bat 'build.bat' } }
    stage('Package') { step {bat 'package.bat' } }
  }
  post{
    success{ archiveArtifacts artifacts: 'dist/**', fingerprints: true }
    failure { echo 'CI pipeline failed' }
  }
}
