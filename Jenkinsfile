pipeline {
  agent {
    docker {
      image 'docker:latest'
    }

  }
  stages {
    stage('e2e') {
      steps {
        sh '''echo "running e2e-tests"
'''
        echo 'Print message'
        sh './e2e_test.sh'
      }
    }

  }
}