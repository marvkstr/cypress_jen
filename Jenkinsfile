pipeline {
  agent {
    docker {
      image 'docker:latest'
    }

  }
  stages {
    stage('error') {
      steps {
        sh 'sh \'./e2e_test.sh\''
      }
    }

  }
}