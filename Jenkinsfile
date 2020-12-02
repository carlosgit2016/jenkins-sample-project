pipeline {
  agent any
  
  environment {
    WORKSPACE=pwd()
    TFWRAPPER='terraform'
    TERRAFORM_FILES_PATH='terraform'
  }
  
  stages {
    
    stage("Init"){
      steps {
        sh "${TFWRAPPER} --version"
        sh "${TFWRAPPER} init ${TERRAFORM_FILES_PATH}"
      }
    }

    stage("Plan"){
      steps {
        sh "${TFWRAPPER} plan ${TERRAFORM_FILES_PATH}"
      }
    }

    stage("Apply"){
      steps {
        sh "${TFWRAPPER} --version"
        sh "${TFWRAPPER} init ${TERRAFORM_FILES_PATH}"
      }
    }
  
  }
}
