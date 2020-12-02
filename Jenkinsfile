pipeline {
  agent any
  
  environment {
    WORKSPACE=pwd()
    TFWRAPPER='terraform'
  }
  
  stages {
    
    stage("Init"){
      steps {
        sh "pwd"
        //sh "chmod +x ${WORKSPACE}/${TFWRAPPER}"
        sh "${TFWRAPPER} --version"
        sh "${TFWRAPPER} init"
      }
    }
  
  }
}
