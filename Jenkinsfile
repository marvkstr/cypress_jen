pipeline {

  }
  stages {
    stage('error') {
        agent {
            docker {
              image 'docker:latest'
        }
        steps {
            echo "running e2e-tests"
            sh './e2e_test.sh
      }
    }

  }
}