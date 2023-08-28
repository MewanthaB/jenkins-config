def call(Map config = [:]) {
    if (config.GIT_BRANCH == "main") {
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO}:${config.DOCKER_IMAGE_REPO_TAG}-v_${config.GIT_BRANCH}_${config.BUILD_NUMBER}"
    } else {
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO_TAG}-v_${config.BRANCH}_${config.BUILD_NUMBER}"
    }

    sh """
        rm -rf deploy/kube-manifests-qa-argo
        mkdir deploy/kube-manifests-qa-argo
        cp -a deploy/kube-manifests-qa/. deploy/kube-manifests-qa-argo/
        sed -i -e "s/\\(${config.DOCKER_IMAGE_REPO}:\\).*/\\1${ECR_IMAGE}/" deploy/kube-manifests-qa-argo/Deployment.yml
        git checkout -b "${config.GIT_BRANCH}"
        git pull origin "${config.GIT_BRANCH}"
        git branch
        git add deploy/kube-manifests-qa-argo/Deployment.yml deploy/kube-manifests-qa-argo/Service.yml
        git commit -m "CI: Update image for ArgoCD"
        git tag ${config.BRANCH}_${config.BUILD_NUMBER}
        git push -u origin "${config.GIT_BRANCH}"
        git push origin ${config.BRANCH}_${config.BUILD_NUMBER}
    """
}