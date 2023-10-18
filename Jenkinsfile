pipeline {
  agent { label 'workstation'}

  stages {

    stage('Code Quality'){
      when {
        expression { env.TAG_NANE != env.BRANCH_NAME }
      }
      steps {
        sh 'sonar-scanner -Dsonar.host.url=http://172.31.45.154:9000 -Dsonar.login=admin -Dsonar.password=admin123 -Dsonar.projectKey=frontend -Dsonar.qualitygate.wait=true'
      }
    }

    stage('Release'){
      when {
        expression { env.TAG_NANE ==~ ".*" }
      }
      steps {
        sh 'env'
        echo 'CI'
      }
    }

  }

}

