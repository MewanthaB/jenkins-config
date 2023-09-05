def call(Map config = [:]) {
    if (config.GIT_BRANCH == "main") {
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO}:${config.DOCKER_IMAGE_REPO_TAG}-v_${config.GIT_BRANCH}_${config.BUILD_NUMBER}"
    } else {
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO_TAG}-v_${config.BRANCH}_${config.BUILD_NUMBER}"
    }

    try {
        ARGO_BRANCH="ARGO__${config.GIT_BRANCH}"
        sh """
            git checkout -b ${config.GIT_BRANCH} && git pull origin ${config.GIT_BRANCH}
            git push origin --delete ${ARGO_BRANCH} || true
            git checkout -b "${ARGO_BRANCH}" "${config.GIT_BRANCH}"
            git pull
            echo "Created and switched to branch '${ARGO_BRANCH}' based on '${config.GIT_BRANCH}'."

            git branch
            rm -rf deploy/kube-manifests-qa-argo
            mkdir deploy/kube-manifests-qa-argo
            cp -a deploy/kube-manifests-qa/. deploy/kube-manifests-qa-argo/
            sed -i -e "s/\\(${config.DOCKER_IMAGE_REPO}:\\).*/\\1${ECR_IMAGE}/" deploy/kube-manifests-qa-argo/Deployment.yml
            git add deploy/kube-manifests-qa-argo/Deployment.yml deploy/kube-manifests-qa-argo/Service.yml
            git commit -m "[AUTOMATION] Sync deployment file with new image version"
            git tag ${config.BRANCH}_${config.BUILD_NUMBER}
            git push -u origin "${ARGO_BRANCH}"
            git push origin ${config.BRANCH}_${config.BUILD_NUMBER}

            git push origin --delete ${ARGO_BRANCH}
        """
    } catch (Exception e) {
        println("Something went wrong with Git operation for ArgoCD")
    }
}