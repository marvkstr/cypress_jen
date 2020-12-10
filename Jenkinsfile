pipeline {
  agent {
    docker {
      image 'docker'
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