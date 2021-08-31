pipeline {
    // Use the 'maven' Jenkins agent image which is provided with OpenShift 
    agent { 
	dockerfile true
    }	    
    stages {
        stage("Checkout") {
            steps {
                checkout scm
            }
        }
        stage("Docker Build") {
            steps {
		    docker.withRegistry('docker-registry-testproject.192.168.99.120.nip.io', 'push-image-secret') {

                          def customImage = docker.build("eureka-jenkins-image:${env.BUILD_ID}")

        
                          customImage.push()
                    }
            }
        }

        // You could extend the pipeline by tagging the image,
        // or deploying it to a production environment, etc......
    }
}
