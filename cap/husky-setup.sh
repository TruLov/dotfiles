#!/usr/bin/env sh

echo "installing necessary node dependencies"
npm i -D husky @commitlint/config-conventional @commitlint/cli

echo "installing husky"
npx husky install

echo "adding commit-msg-hook"
npx husky add .husky/commit-msg 'npx --no -- commitlint --edit ${1}'

echo "installing pre-commit-hook"
npx husky add .husky/pre-commit 'npx lint-staged'

echo "make hooks executeable"
chmod ug+x .husky/*