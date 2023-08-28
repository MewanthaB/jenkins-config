def call(Map config = [:]) {
    sh("aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 455684304266.dkr.ecr.us-east-1.amazonaws.com")
    if (config.$GIT_BRANCH == "main") {
		sh("docker push 455684304266.dkr.ecr.us-east-1.amazonaws.com/${config.DOCKER_IMAGE_REPO}:${config.DOCKER_IMAGE_REPO_TAG}-v_${config.GIT_BRANCH}_${config.BUILD_NUMBER}")	
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO}:${config.DOCKER_IMAGE_REPO_TAG}-v_${config.GIT_BRANCH}_${config.BUILD_NUMBER}"
	} else {
	    sh("docker push 455684304266.dkr.ecr.us-east-1.amazonaws.com/${config.DOCKER_IMAGE_REPO}:${config.DOCKER_IMAGE_REPO_TAG}-v_${config.BRANCH}_${config.BUILD_NUMBER}")
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO_TAG}-v_${config.BRANCH}_${config.BUILD_NUMBER}"
	}
}