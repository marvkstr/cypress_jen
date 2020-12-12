def DOCkER_ARGS

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
        echo "running e2e-tests"
        sh 'sh e2e_test.sh'
      }
    }

    stage('build and push cypress image') {

        withAWS(credentials: 'aws_credentials', region: "eu-west-1") {
            docker.withRegistry("https://761841363414.dkr.ecr.eu-west-1.amazonaws.com/jenkins_cypress") {
                def image = docker.build("${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${CYPRESS_REPO}:${IMAGE_TAG}", "./cypress.dk")
                image.push()
            }
        }
    }

    stage('push images') {

    }

    stage ('deploy cloudformation') {

    }
  }
}