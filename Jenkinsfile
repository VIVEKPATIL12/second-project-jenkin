pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/VIVEKPATIL12/second-project-jenkin.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Running basic tests...'
                sh 'python -m unittest discover tests'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Streamlit app...'
                sh 'streamlit run app.py --server.port=8501 &'
            }
        }
    }

    post {
        success {
            echo '✅ Streamlit pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed. Check logs.'
        }
    }
}
