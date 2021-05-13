const core = require('@actions/core');
const exec = require('@actions/exec');

async function run() {
    try {
        const script = core.getInput('script', { required: true })

        await exec.exec(`chmod +x ${script}`);
        const exitCode = await exec.exec(`./${script}`, [], {"ignoreReturnCode": true});

        core.setOutput("exit-code", exitCode)
        if (exitCode !== 0) {
            core.setFailed(`script exited with code ${exitCode}`);
        }

    } catch (error) {
        core.setFailed(error.message);
    }
}

run()
