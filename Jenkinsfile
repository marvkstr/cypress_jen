pipeline {
  agent any
  stages {
    stage('e2e') {
      steps {
        echo 'running e2e-tests'
        sh 'sh e2e_test.sh'
      }
    }

    stage('build and push cypress image') {
      steps {
        echo 'standing by'
        awsIdentity()
      }
    }

    stage('push images') {
      steps {
        echo 'waiting for instructions'
      }
    }

    stage('deploy cloudformation') {
      steps {
        echo 'waiting for instructions'
      }
    }

  }
}