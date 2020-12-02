pipeline {
  agent any
  
  environment {
    WORKSPACE=pwd()
    TFWRAPPER='terraform'
    TERRAFORM_FILES_PATH='terraform'
  }
  
  stages {
    
    stage("PrepateContext"){
      steps {
        sh "${TFWRAPPER} --version"
        sh "${TFWRAPPER} validate ${TERRAFORM_FILES_PATH}"
        sh "${TFWRAPPER} init ${TERRAFORM_FILES_PATH}"
      }
    }

    stage("Planning"){
      steps {
        sh "${TFWRAPPER} plan ${TERRAFORM_FILES_PATH} -input=false"
      }
    }

    stage("ApplyChanges"){
      steps {
        sh "${TFWRAPPER} --version"
        sh "${TFWRAPPER} apply ${TERRAFORM_FILES_PATH} -input=false -auto-approve"
      }
    }
  
  }
}