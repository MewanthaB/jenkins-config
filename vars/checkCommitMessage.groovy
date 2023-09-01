def call(Map config = [:]) {
    def commitMessage = sh(script: 'git log -1 --pretty=%B', returnStdout: true).trim()
    if (commitMessage == 'Specific commit message to skip pipeline') {
        currentBuild.result = 'ABORTED'
        error('Pipeline execution skipped due to specific commit message')
    }
}