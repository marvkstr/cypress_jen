pipeline {
  agent {
      docker {
        image 'docker/compose:latest'
      }
  }
  stages {
    stage('e2e') {
      steps {
        echo "running e2e-tests"
        sh 'which docker'
        sh ' docker build -t myjenkins-blueocean:1.1 . '
        sh 'sh e2e_test.sh'
      }
    }

  }
}