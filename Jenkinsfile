pipeline {
    agent any
    
    stages {
        // Étape 1 : Cloner le dépôt Git
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        
        // Étape 2 : Construire le projet Maven
        stage('Build') {
            steps {
                sh 'mvn -B clean package -DskipTests'
            }
        }
    }
    
    post {
        success {
            echo '✅ Pipeline terminé avec succès !'
        }
        failure {
            echo '❌ Pipeline échoué.'
        }
        always {
            echo 'Pipeline terminé.'
        }
    }
}
