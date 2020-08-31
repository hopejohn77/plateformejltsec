pipeline{
  agent any
  
    def registryProjet='https://hub.docker.com/userpfe/hopejohnhub/nginxpfe'
    def registryProjet='https://hub.docker.com/userpfe/hopejohnhub/mysqlpfe'
    
    def IMAGE1="${registryProjet}:nginxpfe-${env.BUILD1_ID}"
    def IMAGE2="${registryProjet}:mysqlpfe-${env.BUILD2_ID}"
      
    def img1 = stage('Build') {
        docker.build("$IMAGE1", '.')
      }
    def img2 = stage('Build') {
        docker.build("$IMAGE2", '.')
      }
   
      stage('test du service web'){
        img1.withRun("--name run-$BUILD1_ID -p 8181:8181"){ c ->
        sh 'docker ps'
        sh 'curl 127.0.0.1:8182'
        }
       stage('test du service base de données'){
        img2.withRun("--name run-$BUILD2_ID -p 3306:3306"){ c ->
        sh 'docker ps'
        sh 'curl 127.0.0.1:3316'
        }
      }
      stage('push'){
          docker.withRegistry('https://hub.docker.com', 'registry-server-git')
            img1.push()
          }
      stage('push'){
          docker.withRegistry('https://hub.docker.com', 'registry-server-git')
            img1.push()
          }
      }
}
