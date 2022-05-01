pipeline {
    agent any 
    stages {
        stage('k8s_master build') { 
            steps {
                terraform apply --auto-approve
            }
        }
    }    
}    
