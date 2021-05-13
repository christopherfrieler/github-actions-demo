# execute-script-action
This is a custom GitHub Action to execute a shell script.
The action will take care of making it executable.

## Build
The action is built as a JavaScript action.
See [Creating a JavaScript action](https://docs.github.com/en/actions/creating-actions/creating-a-javascript-action) for a detailed documentation of the setup.

### TL;DR
**Prerequisite:** Node.js 12.x including npm.\
**Install dependencies:** `npm install`\
**Compile [dist](dist):** `node node_modules/@vercel/ncc/dist/ncc/cli.js build index.js --license licenses.txt` (Note: dist needs to be committed.)
