pipeline {
  agent any
  
  environment {
    WORKSPACE=pwd()
  }
  
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
