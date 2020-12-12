

pipeline {
  agent any

  environment {
    AWS_REGION = "eu-west-1"
    AWS_ACCOUNT_ID = "761841363414"
    CYPRESS_REPO = "jenkins_cypress"
    SENTI_REPO = "jenkins_sentimentalyzer"
    IMAGE_TAG = "latest"
    REGISTRY= "761841363414.dkr.ecr.eu-west-1.amazonaws.com"
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
          docker.withRegistry("https://${REGISTRY}/${CYPRESS_REPO}", "ecr:eu-west-1:aws-credentials") {
            def image = docker.build("${REGISTRY}/${CYPRESS_REPO}:${IMAGE_TAG}", "-f ./cypress.dk .")
            image.push()
          }
        }
      }
    }
  }
}