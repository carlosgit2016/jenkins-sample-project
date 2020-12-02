pipeline {
  agent any
  
  environment {
    WORKSPACE=pwd()
    TFWRAPPER='terraform'
    TERRAFORM_FILES_PATH='terraform'
    //AWS_REGION='us-east-1'
  }
  
  stages {
    
    stage("PrepateContext"){
      steps {
        sh """
        export AWS_REGION=us-east-1
        ${TFWRAPPER} --version
        ${TFWRAPPER} validate ${TERRAFORM_FILES_PATH}
        ${TFWRAPPER} init ${TERRAFORM_FILES_PATH}
        """
      }
    }

    stage("Planning"){
      steps {
        sh """
        ${TFWRAPPER} plan ${TERRAFORM_FILES_PATH} -input=false
        """
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