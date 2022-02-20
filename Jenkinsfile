pipeline {
    agent { dockerfile true}
    environment{
        dockerHome = tool 'myDocker'
        PATH = "$dockerHome/bin:$PATH"
    }
    stages {
        stage('Building Image') {
            steps {
                sh 'python3 --version'
                
            }
        }
        stage('Running Container') {
            steps {
                echo "Step 2: Running Container"
                sh 'flask --version'
            }
        }
        stage('deploy') {
            steps {
                echo "Step 3: Deploying"
            }
        }
    }
    post{
        always{
            echo 'I always Run'
        }
        success{
            echo 'I run when the job is successful'
        }
        failure{
            echo 'I run when the job fails'
        }
    }
}