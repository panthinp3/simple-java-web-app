pipeline {
agent any 
stages {
/*stage ('git checkout') {
steps {
checkout([$class: 'GitSCM', branches: [[name: '/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/astin2044327/sample-javaapp.git']]])

   }
   }
   */
   
   stage ('docker build') {
   steps {
    
   sh 'docker build -t java_app:v1 .'
   
   
   }
   }
   
   stage ('docker run') {
   steps {
    
   sh 'docker run -it --name my-running-app Helloworld'
   
   
   }
   }
   
   
   
   
   }
   }
   
