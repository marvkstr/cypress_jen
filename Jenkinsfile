

pipeline {
  agent any

  environment {
    AWS_REGION = "eu-west-1"
    AWS_ACCOUNT_ID = "761841363414"
    CYPRESS_REPO = "jenkins_cypress"
    SENTI_REPO = "jenkins_sentimentalyzer"
    IMAGE_TAG = "latest"
    REGISTRY = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"
    registryCredential = 'ID_OF_MY_AWS_JENKINS_CREDENTIAL'
  }
  stages {
    stage('e2e') {
      steps {
        echo 'running e2e-tests'
        sh 'sh e2e_test.sh'
      }
    }

    stage('build and push cypress image') {
      steps {
        script {
            docker.withRegistry("https://" + REGISTRY, "ecr:eu-west-1:" + aws-credentials) {
              def image = docker.build("${REGISTRY}/${CYPRESS_REPO}:${IMAGE_TAG}", "./cypress.dk")
              image.push()
            }
        }

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