pipeline {
    agent any
    stages {
        stage('Preparation') {
            steps {
                script {
                    // Install Node.js and npm
                    sh 'curl -sL https://deb.nodesource.com/setup_14.x | bash -'
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
