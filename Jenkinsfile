pipeline {
    agent any 
    stages {
            stage('SCM') {
                steps {
                    checkout scm
                }    
            }
            stage('SonarQube Analysis') {
                withSonarQubeEnv() {
                }
                steps {
                sh "./gradlew sonarqube"
              }
            }     
         stage('terraform init') { 
            steps {
               sh 'terraform init'
            }    
         }
         stage('terraform plan') { 
            steps {
               sh 'terraform plan'
            }    
         }
         stage('terraform apply') {
            steps {
                sh 'TF_LOG=DEBUG terraform apply --auto-approve'
            }
         }
         stage('Download') {
            steps {
                sh 'echo "artifact file" > generatedFile.txt'
            }
         }
         stage('Deploy pods to k8s_master') {
            steps {
                sshagent(['K8s_master']) {
                    sh "scp -o StrictHostKeyChecking=no pods.yaml ubuntu@52.66.195.32:/home/ubuntu/"
                    script{
                        try{
                            sh "ssh ubuntu@52.66.195.32 kubectl apply -f ."
                        }catch(error){
                            sh "ssh ubuntu@52.66.195.32 kubectl create -f ."
                        }
                    } 
                }
            }
         }    
     }
  }  
/*
        stage('terraform destroy') { 
            steps {
               sh 'terraform destroy --auto-approve'
            }    
        }       
    }   
}   
*/
