pipeline {
  agent any
  
  environment {
    WORKSPACE=pwd()
    TFWRAPPER='terraformw'
  }
  
  stages {
    
    stage("Init"){
      steps {
        sh "pwd"
        sh "chmod +x ${WORKSPACE}/${TFWRAPPER}"
        sh "${WORKSPACE}/${TFWRAPPER} --version"
        sh "${WORKSPACE}/${TFWRAPPER} init"
      }
    }
  
  }
}
