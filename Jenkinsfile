def DOCkER_ARGS

pipeline {
  agent any
  stages {
    stage('e2e') {
      steps {
        echo "running e2e-tests"
        sh 'which docker'
        sh 'sh e2e_test.sh'
      }
    }
  }
}