pipeline {
    agent any
    
    tools {
        jdk 'JDK17'    // Nom exact du JDK configuré dans Jenkins
        maven 'Maven'  // Nom exact de Maven configuré dans Jenkins
    }

    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        
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
