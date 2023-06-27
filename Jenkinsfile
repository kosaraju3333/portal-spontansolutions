pipeline {
    agent any

    stages {
        stage('GIT'){
            steps {
                git changelog: false, credentialsId: 'kosaraju3333-GitHub-Access-Token', poll: false, url: 'https://github.com/kosaraju3333/portal-spontansolutions.git'
            }
        }
        stage('Build'){
            steps {
                sh "sudo npm init -y"
                sh "sudo npm i express.js body-parser knex pg nodemon"
            }
        }
        stage('Creating Artifact'){
            steps {
                sh "sudo tar -czf portal-spontansolutions.tar.gz node_modules package.json public server.js"

            }
        }
        stage('Uploading Artifact to S3 Bucket'){
            steps {
                sh "aws s3 cp portal-spontansolutions.tar.gz s3://portal-spontansolutions.com-freestyle-project"
            }
        }
    }
}