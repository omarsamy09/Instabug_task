pipeline {
 environment {
        credentials = "os09-dockerhub"
        dockerImage = ""
        image = "go-violin-image"
}
  agent any
  stages {
    stage("build") {
      steps {
        sh 'echo "building...."'
        dockerImage = docker.build image .
       }
    }
      stage("push") {
        steps{
             docker.withRegistry( '', credentials) {
             dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')
            }
        }
    }
  
  }
}