pipeline {
  agent any
  
  stages {
    stage("Build") {
      steps {
        echo "Hello World"
        def workspace=pwd()
        sh "echo ${workspace}"
      }
      
    }
  }
}
