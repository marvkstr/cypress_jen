pipeline {
  agent any
  stages {
    stage('e2e') {
      steps {
        echo "running e2e-tests"
        sh 'ls -lah'
        sh 'pwd'
        sh './e2e_test.sh'
      }
    }

  }
}