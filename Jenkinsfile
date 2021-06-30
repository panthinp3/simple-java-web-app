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
   
  /* stage ('docker run') {
   steps {
    
   sh 'docker run -it --name my-running-app Helloworld'
   
   
   }
   } */
   
   stage('Deploy our image') {
        steps{
           
           withCredentials([usernameColonPassword(credentialsId: 'docker', variable: 'docker')]) {
            sh 'docker push java_app:v1'
            sh 'docker push java_app:$BUILD_NUMBER'
         }
   /*       withDockerRegistry([credentialsId: "docker", url: ""]){
            sh 'docker push panthinp3/java_web:v1'
            sh 'docker push panthinp3/java_web:$BUILD_NUMBER'
    }*/
  }      
}
   
   
   
   
   }
   }
   
