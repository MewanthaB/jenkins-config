def call() {
    sh """
        rm -rf deploy/kube-manifests-qa-argo
        mkdir deploy/kube-manifests-qa-argo
        cp -a deploy/kube-manifests-qa/. deploy/kube-manifests-qa-argo/
        sed -i -e "s/\\(${DOCKER_IMAGE_REPO}:\\).*/\\1${ECR_IMAGE}/" deploy/kube-manifests-qa-argo/Deployment.yml
        git checkout -b "${env.GIT_BRANCH}"
        git pull origin "${env.GIT_BRANCH}"
        git branch
        git add deploy/kube-manifests-qa-argo/Deployment.yml deploy/kube-manifests-qa-argo/Service.yml
        git commit -m "CI: Update image for ArgoCD"
        git tag ${BRANCH}_${BUILD_NUMBER}
        git push -u origin "${env.GIT_BRANCH}"
        git push origin ${BRANCH}_${BUILD_NUMBER}
    """
}