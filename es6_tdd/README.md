# ES6 TDD Kata

Setup a basic ES6 project using yarn for dependencies, jest for testing and
bable to use ES6 syntax

**Dojo Exercise**

  1. `mkdir es6_tdd/YYYYMMDD_kata_name` to create a new directory
  1. `yarn init` and use defaults for a pakcage.json file
  1. `yarn add --dev babel-cli babel-preset-env` use babel for ES6
  1. `yarn add --dev jest` jest for testing
  1. ignore `node_modules` from commit
```
cat >> .gitignore
node_modules
```
  1. `vi package.json` define ES6 bable presets
```
"babel": {                                                                                                                                                          g
  "presets": [ [ "env", { "targets": { "node": "current" } } ] ]                                                                                                    g
},                                                                                                                                                                  g
```
  1. `vi package.json` define test script to run jest
```
"scripts": { "test": "jest" }                                                                                                                                       g
```
  1. `yarn test` run tests
```
No tests found
...
  testMatch: **/__tests__/**/*.js?(x),**/?(*.)+(spec|test).js?(x) - 0 matches
```
  1. using an example of a [tennis kata](https://codingdojo.org/kata/Tennis/)
  1. create basic test file
```
cat >> tennis.test.js
import Tennis from './tennis'

test('play starts with love all', () => {
  const tennis = new Tennis
  expect(tennis.score()).toEqual('love all')
})
```
  1. `yarn test` run tests
```
FAIL  ./tennis.test.js
  ● Test suite failed to run

  Cannot find module './tennis' from 'tennis.test.js'
```
  1. create basic implementation file
```
cat >> tennis.js
class Tennis {
  constructor() {
  }

  score() {
    return 'love all'
  }
}
```
  1. `yarn test` run tests
```
  PASS  ./tennis.test.js
  ✓ play starts with love all (5ms)

✨ Done in 1.29s.
```
  1. `yarn test -- --watch` alternatively run tests automatically on save
  1. **Refactor** - maybe too early on at this stage?
  1. continue **Red**, **Green**, **Refactor** till problem complete

