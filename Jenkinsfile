pipeline {
  agent any
  
  environment {
    WORKSPACE=pwd()
    TFWRAPPER='terraform'
    TERRAFORM_FILES_PATH='terraform'
    ASSUME_ROLE_VAR="""${sh(returnStdout: true, script: 'echo $TERRAFORM_FILES_PATH') }"""
    //AWS_REGION='us-east-1'
  }
  
  stages {
    
    stage("Test"){
      steps{
        echo "${ASSUME_ROLE_VAR}"
      }
    }

    stage("PrepateContext"){
      steps {

        script {
          awesomeVersion = sh(returnStdout: true, script: 'echo 0.0.1')
        }

        environment {
          awesomeVersion = "${awesomeVersion}"
        }

        sh """
        echo ${awesomeVersion}
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