pipeline {
  agent any
  stages {
    stage('stage 1') {
      parallel {
        stage('LS') {
          steps {
            sh 'ls -alrt; tree .;'
          }
        }

        stage('OCI') {
          steps {
            sh 'echo "OCI scripts"'
          }
        }

        stage('SSH') {
          steps {
            sh '''ssh host 

<<<EOF

Command EOF'''
          }
        }

      }
    }

    stage('stage 2') {
      steps {
        sh 'uname -a'
      }
    }

  }
}