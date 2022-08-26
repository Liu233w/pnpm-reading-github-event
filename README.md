# Reproduce the issue
Run `docker build .` on project root.

It shows error like below:
```
Error: ENOENT: no such file or directory, open '/home/runner/work/_temp/_github_workflow/event.json'
    at Object.openSync (node:fs:599:3)
    at Object.readFileSync (node:fs:467:35)
    at NodeFS.readFileSync (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:147878:28)
    at NodeFS.readJsonSync (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:147492:30)
    at ../../node_modules/.pnpm/@yarnpkg+core@4.0.0-rc.14/node_modules/@yarnpkg/core/lib/Configuration.js (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:164497:117)
    at __require (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:9:50)
    at ../../node_modules/.pnpm/@yarnpkg+core@4.0.0-rc.14/node_modules/@yarnpkg/core/lib/execUtils.js (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:165695:27)
    at __require (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:9:50)
    at ../../node_modules/.pnpm/@yarnpkg+core@4.0.0-rc.14/node_modules/@yarnpkg/core/lib/index.js (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:188339:43)
    at __require (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:9:50) {
  errno: -2,
  syscall: 'open',
  code: 'ENOENT',
  path: '/home/runner/work/_temp/_github_workflow/event.json'
}
The command '/bin/sh -c pnpm test' returned a non-zero code: 1
```
