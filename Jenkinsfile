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
    
   sh 'docker build -t java_web:latest .'
   sh 'docker tag java_web panthinp3/java_web:latest'
   sh 'docker tag java_web panthinp3/java_web:$BUILD_NUMBER'
   
   
   }
   }
   
  /* stage ('docker run') {
   steps {
    
   sh 'docker run -it --name my-running-app Helloworld'
   
   
   }
   } */
   
   stage('Deploy our image') {
        steps{
           
         /*  withCredentials([usernameColonPassword(credentialsId: 'docker', variable: 'docker')]) {
            sh 'docker push panthinp3/java_web:latest'
            sh 'docker push panthinp3/java_web:$BUILD_NUMBER'
         }*/
         withDockerRegistry(credentialsId: 'docker', url: 'https://hub.docker.com/repository/docker/panthinp3/java_web') {
               sh 'docker push panthinp3/java_web:latest'
               sh 'docker push panthinp3/java_web:$BUILD_NUMBER'
    
            }
         }      
      }
   
   
   
   
   }
 }
   
