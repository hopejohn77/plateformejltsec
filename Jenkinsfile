pipeline{
  agent any
    stages{
      stage('build'){
        steps{
        sh '/home/maven/bin/maven clean install'
        }
       }
      stage('test'){
        steps{
       sh '/home/maven/bin/maven test'
        }
       }
     stage('delivery'){
        steps{
       sh '/home/maven/bin/maven validate'
        }
       }
     stage('deploy'){
        steps{
       sh  '/home/maven/bin/maven deploy'
        }
       }
    }
   }
