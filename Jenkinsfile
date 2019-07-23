
node {
		stage("Checkout Scm") {
			checkout scm
		}
		stage("maven Task") {
			def maven = tool 'maven' 
			sh "${maven}/bin/mvn clean -e -U package"
		}

}
