pipeline {
  agent any
  stages {
    stage('stage 1') {
      steps {
        sh 'ls -alrt'
      }
    }

    stage('stage 2') {
      steps {
        node(label: 'Node') {
          sh 'uname -a'
        }

      }
    }

  }
}