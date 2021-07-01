/*Install docker pipeline plugin
Add docker credentials 
generate scripts for 'with docker registry' and provide url as ' '
   
Inside build step:
build docker giving a name and version: latest
tag the docker image with docker repo name and version as latest
tag the docker image with docker repo name and $BUILD_NUMBER

Inside deploy step:
   push the image to hub using repo name and version as latest
   push the image to hub using repo name and $BUILD_NUMBER */


pipeline {
agent any 
stages {
   
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
         withDockerRegistry(credentialsId: 'docker', url: '') {
               sh 'docker push panthinp3/java_web:latest'
               sh 'docker push panthinp3/java_web:$BUILD_NUMBER'
    
            }
         }      
      }
   
   
   
   
   }
 }
   
