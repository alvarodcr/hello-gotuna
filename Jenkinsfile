pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker-compose build"
            	script {
                    	def startTime = new Date().format("dd/MM/yyyy HH:mm:ss")
                    	echo "Build started at: ${startTime}"
           	}
	    }		
	}
        stage('Deploy') {
            steps {
                sh "docker-compose up -d"
            }
        }
    }
}

