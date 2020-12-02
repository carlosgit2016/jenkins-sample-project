pipeline {
  agent any
  
  stages {
    
    stage("Init"){
      steps {
        sh "pwd"
        sh "terraform --version"
        sh "terraform init"
      }
    }
  
  }
}
