pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t test-website:${env.BUILD_NUMBER} .'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -d -p 80:80 test-website:${env.BUILD_NUMBER}'
      }
    }
  }
}
