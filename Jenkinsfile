pipeline {
    agent any 
    stages {
        stage('terraform init') { 
            steps {
                'terraform init'
        stage('terraform apply') {
            steps {
                'terraform apply --auto-approve'
            }
        }
    }    
}    
}
}    
