pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                // input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
    post {
        success {
            emailext subject: 'Pipeline Success',
                      body: 'Your pipeline has succeeded!',
                      to: 'justinruizsrdev@gmail.com'
        }
        failure {
            emailext subject: 'Pipeline Failure',
                      body: 'Your pipeline has failed!',
                      to: 'justinruizsrdev@gmail.com'
        }
    }
}
