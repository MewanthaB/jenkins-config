def call(Map config = [:]) {
    if (config.GIT_BRANCH == "main") {
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO}:${config.DOCKER_IMAGE_REPO_TAG}-v_${config.GIT_BRANCH}_${config.BUILD_NUMBER}"
    } else {
        ECR_IMAGE="${config.DOCKER_IMAGE_REPO_TAG}-v_${config.BRANCH}_${config.BUILD_NUMBER}"
    }

    try {
        ARGO_BRANCH="ARGO__${config.GIT_BRANCH}"
        sh """
            git checkout ${config.GIT_BRANCH}
            # Check if the "ARGO_BRANCH" already exists
            if git rev-parse --verify --quiet "${ARGO_BRANCH}"; then
                # If "ARGO_BRANCH" exists, switch to it and merge changes from "GIT_BRANCH"
                git checkout "${ARGO_BRANCH}"
                git pull origin "${config.GIT_BRANCH}"
                echo "Switched to branch '${ARGO_BRANCH}' and merged changes from '${config.GIT_BRANCH}'."
            else
                # If "newbranch" doesn't exist, create it based on "config.GIT_BRANCH"
                git checkout -b "${ARGO_BRANCH}" "${config.GIT_BRANCH}"
                echo "Created and switched to branch '${ARGO_BRANCH}' based on '${config.GIT_BRANCH}'."
            fi

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
        """
    } catch (Exception e) {
        println("Something went wrong with Git operation for ArgoCD")
    }
}