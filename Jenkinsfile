pipeline {
    agent any 
    stages {
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
    }    
}    
