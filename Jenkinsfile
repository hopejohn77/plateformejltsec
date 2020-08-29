pipeline{
  agent any
    stages{
      stage('build to docker image'){
        steps{
        sh 'docker build -t . userpfe/hopejohnhub:jltsec1.0.1'
        }
       }
      stage('dockerhub push'){
        steps{
       sh 'docker push userpfe/hopejohnhub:jltsec1.0.1'
        }
       }
     stage('deploy to k8s'){
        steps{
        }
       }
    }
   }
