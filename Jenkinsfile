Pipeline {
    agent any
    stages {
        stage('Checkout'){
            steps {
                // Simple git checkout
                git branch: 'main', url: 'https://github.com/mayurghule494/E-shopping-cart.git'
            }
        }
        stage('Build'){
            steps {
                // Clean and build the Java project using Maven
                sh 'mvn clean install'
            }
        }
        stage('Push to artifact'){
            steps {
                // Push the artifact to Nexus repository
               // sh 'mvn deploy'
            }
        }
        stage('Create a Docker Image'){
            steps {
                // Creating Docker image
               // sh 'docker build -t e-com:snapshot .'
            }
        }
    } 
}
