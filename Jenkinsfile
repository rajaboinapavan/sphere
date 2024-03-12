pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from Git repository
                git 'https://github.com/rajaboinapavan/sales_sphere.git'
            }
        }
        
        stage('Build') {
            steps {
                // Execute Perl script to calculate sales
                sh 'perl sales_calculation.pl'
            }
        }

        stage('Unit Test') {
            steps {
                // Run unit tests for Perl script
                sh 'perl sales_calculation_test.pl'
            }
        }

        stage('Deploy') {
            steps {
                // Perform deployment steps if needed
                // e.g., copy artifacts to deployment server
                echo 'Deployment steps...'
            }
        }
    }

    post {
        success {
            // Send success notification
            echo 'Pipeline executed successfully'
        }
        failure {
            // Send failure notification
            echo 'Pipeline failed!'
        }
    }
}

