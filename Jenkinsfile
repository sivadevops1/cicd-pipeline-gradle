pipeline {
 agent any
stages {
 stage('CodeCheckout') {
 steps {
 script {
    checkout scm
     sh 'yum -y install wget'
     sh 'wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo'
     sh 'yum -y install unzip java-1.8.0-openjdk'
     sh 'yum install -y maven'
  
     }
    }
   }
   
 stage('build customer app code') { 
 steps {
  script {
    
        sh 'yum install -y maven'
        sh 'mvn clean install'
    }
  }
 }
 
  stage('docker images code') { 
 steps {
  script {
       sh 'docker build -t  .'
       sh 'docker container run -d -p 3003:8080 -v  /var/run/docker.sock:/var/run/docker.sock docker.io/sivasunku/dockerjenkinsv1'
       sh 'docker login --username=sivasunku --password=$env.password'
        sh 'docker push sivasunku/dockerjenkinsv1'
    }
  }
 }
}
}
