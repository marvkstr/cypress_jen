def DOCkER_ARGS

node {
    DOCKER_ARGS = '-e HOME=/home/ -v ${HOME}/.aws:/home/.aws -v /var/run/docker.sock:/var/run/docker.sock -u ' +
    sh(returnStdout: true, script: 'id -u $USER').trim() + // get the user id to run the container with (Jenkins should be 1001)
    ':' +
    sh(returnStdout: true, script: 'getent group docker | cut -d: -f3').trim() // get the docker group id to run the container with (docker should be 123)
}


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