pipeline {
  agent any
  
  stages {
    
    stage("Init"){
      steps {
        sh "terraform --version"
        sh "terraform init"
      }
    }
  
  }
}
