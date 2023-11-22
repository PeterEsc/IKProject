pipeline {
  agent {
    node {
      label 'master'
      customWorkspace 'C:\\TestWorkspace'
    }

  }
  stages {
    stage('Building') {
      post {
        success {
          echo 'Build Stage Successful.'
        }

        failure {
          echo 'Build Stage Unsuccessful.'
        }

      }
      steps {
        echo 'Build Stage Started.'
        bat "BuildWithoutCooking.bat \"${ue5Path}\" \"${env.WORKSPACE}\" \"${ueProjectFilename}\""//builds our project
      }
    }

  }
  environment {
    ue5Path = 'C:\\Program Files\\Epic Games\\UE_5.2'
    ue5Project = 'IKProject'
    ueProjectFileName = "${ue5Project}.uproject"
    codeCoverageReportName = 'CodeCoverageReport.xml'
  }
  post {
    always {
      echo 'Publish Code Coverage Report.'
      cobertura(coberturaReportFile: "${codeCoverageReportName}")
      echo 'Cleaning up workspace:'
      echo '-checking current workspace.'
      powershell(label: 'show workspace', script: 'dir $WORKSPACE')
      bat 'git reset --hard'
      bat 'git clean -dffx .'
      echo '-checking clean workspace.'
      powershell(label: 'show workspace', script: 'dir $WORKSPACE')
    }

  }
}