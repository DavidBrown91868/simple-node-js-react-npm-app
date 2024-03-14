pipeline {
    agent any
    stages {
        stage('Preparation') {
            steps {
                script {
                    // Install Node.js and npm
                    sh 'curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -'
                    sh 'apt-get install -y nodejs'
                }
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
    }
}
