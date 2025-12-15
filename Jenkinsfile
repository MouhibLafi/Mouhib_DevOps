pipeline {
    agent any
    
    tools {
        jdk 'JAVA_HOME'   // Assure-toi que JAVA_HOME est configuré dans Jenkins
        maven 'M2_HOME'   // Assure-toi que M2_HOME est configuré dans Jenkins
    }

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
