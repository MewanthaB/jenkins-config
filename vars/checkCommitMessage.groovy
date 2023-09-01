def call() {
    def commitMessage = sh(script: 'git log -1 --pretty=%B', returnStdout: true).trim()
    if (commitMessage == '[AUTOMATION] Sync deployment file with new image version') {
        currentBuild.result = 'SUCCESS'
        error('Pipeline execution skipped due to specific commit message')
    }
}