pipeline {
  agent {
      docker {
        image 'docker:latest'
      }
  }
  stages {
    stage('e2e') {
      steps {
        echo "running e2e-tests"
        sh 'ls -lah'
        sh 'pwd'
        sh 'which docker-compose'
        sh 'sh e2e_test.sh'
      }
    }

  }
}