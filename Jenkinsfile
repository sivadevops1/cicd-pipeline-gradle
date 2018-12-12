pipeline {
  agent any
  stages {
  stage ('Build') {
    steps {
      echo 'Running Build Automation'
      sh './gradlew build --no-daemon'
      archiveArtifacts artifacts: 'dist/sampleapp.zip'
    }
  }
   stage ('Checkout') {
    steps {
      echo 'Checking or cloning https://github.com/sivadevops1/dataPrepare.git'
      git clone https://github.com/sivadevops1/dataPrepare.git
    }
 }
}


