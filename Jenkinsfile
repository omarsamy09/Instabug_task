pipeline {
   environment {
        credentials = 'os09-dockerhub'
        dockerImage = ""
        image = "go-violin-image"
   }
  agent any
  stages{
    stage("build") {
        steps{
        sh 'echo "building...."'
        script{
            dockerImage = docker.build image
            }
      }
    }
    stage("push") {
        steps{
         script{
            docker.withRegistry('https://registry.hub.docker.com/omarsamy09', credentials) {
            dockerImage.push("$BUILD_NUMBER")
            dockerImage.push('latest')
            }
        } 
    }
  }
 }
}