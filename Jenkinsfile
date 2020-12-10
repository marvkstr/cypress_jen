pipeline {

  }
  stages {
    stage('error') {
        agent {
            docker {
              image 'docker:latest'
        }
        steps {
            sh 'sh \'./e2e_test.sh\''
      }
    }

  }
}