pipeline {
    agent any
    tools {
        maven 'Maven'  // Assure-toi que ce nom correspond à Maven configuré dans Jenkins
    }
    environment {
        APP_ENV = "DEV"
    }
    stages {
        stage('Code Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/MouhibLafi/Mouhib_DevOps.git'
            }
        }
        stage('Code Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('SonarQube Analysis') {
            environment {
                scannerHome = tool 'SonarScanner'  // Nom de ton SonarScanner configuré dans Jenkins
            }
            steps {
                withSonarQubeEnv('SonarQube') {  // Nom du serveur SonarQube configuré dans Jenkins
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
        stage('Quality Gate') {
            steps {
                timeout(time: 5, unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
    }
    post {
        always { echo "======always======" }
        success { echo "=====pipeline executed successfully =====" }
        failure { echo "======pipeline execution failed======" }
    }
}
