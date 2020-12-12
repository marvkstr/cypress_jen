
def AWS_REGION = "eu-west-1"
def AWS_ACCOUNT_ID = "761841363414"
def CYPRESS_REPO = "jenkins_cypress"
def SENTI_REPO = "jenkins_sentimentalyzer"
def IMAGE_TAG = "latest"

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
      }
    }

    stage('push images') {
      steps {
        echo 'waiting for instructions'
      }
    }

    stage ('deploy cloudformation') {
      steps {
       sh 'aws iam get-user'
      }
    }
  }
}