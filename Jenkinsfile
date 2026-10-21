pipeline {
  agent any
  environment {APP_NAME = 'demo' }
  stages {
    stage{'Build'} {
      environement { BUILD_MODE = 'production' }
      steps {
        bat 'echo %APP-NAME% %BUILD_MODE%'
      }
    }
  }
}
