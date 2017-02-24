# Agile IBM
[![Build Status](https://travis.ibm.com/agile/convergence.svg?token=GEQPqR4dViSH8CpMeuaS&branch=master)](https://travis.ibm.com/agile/convergence) [![Chat with us on Slack](https://imgh.us/joinslack.svg)](https://ibm-cio.slack.com/messages/tlt-deathstar)

## Overview
A new Agile experience.

## Getting Started
This project uses Node.js version 6.7.0. We recommend installing Node.js via [nvm](https://github.com/creationix/nvm). With nvm, you can install the correct version of Node.js using `nvm use node`, which installs the latest version. To run the project for development:

### Install NPM packages
Using NPM Enterprise for private packages.

Run the following command to login in NPM Enterprise.
```
$ npm login --registry=https://npm-registry.whitewater.ibm.com --scope=@whitewater
```
Here is an example of follow-up information you should enter.
```
Username: xiawei
Password: 
Email: (this IS public) xiawei@us.ibm.com
```

And run `npm install`, and you may get an err message like 

`npm ERR! visit https://github.ibm.com/login/oauth/authorize?redirect_uri=https%3A%2F%2Fnpm.whitewater.ibm.com%2Fauth%2Foauth2%2Fcallback&scope=user&state=qwertyuiopasdfghjklzxcvbnm to validate your session : @whitewater/rapid`


Visit `https://github.ibm.com/login/oauth/authorize?redirect_uri=https%3A%2F%2Fnpm.whitewater.ibm.com%2Fauth%2Foauth2%2Fcallback&scope=user&state=qwertyuiopasdfghjklzxcvbnm` to validate your session. (Link will be vary according to your account.)

And run the following command again as the instructions above.
```
$ npm login --registry=https://npm-registry.whitewater.ibm.com --scope=@agile
```
You may need to validate your session again if any error message pops up.

Finally, you can run `npm install` to install npm packages successfully.

To run the project in production mode:
```
npm install
npm run webpack
NODE_ENV=production npm start
```
If you've never used npm Enterprise before, you'll need to setup your token in order to pull in all dependencies. You can follow directions as described here: https://github.ibm.com/Whitewater/npm-enterprise#option-2-using-npm-enterprise-for-private-packages-only

### Building the front-end code with Webpack
"webpack takes modules with dependencies and generates static assets representing those modules." If you would like to run in `production` mode, you'll need to build the front-end code first. Otherwise, these steps can be skipped.

1. Make sure you first do `npm install`
2. For production, the front-end Javascript and CSS is built using webpack. Execute `npm run webpack` - this will build the bundle files and place them in `/public/dist`
3. For development, `webpack-dev-middleware` and `webpack-hot-middleware` are utilized to rebuild the bundles and serve them from memory when dependencies are updated.
  - To activate this middleware, delete the /public/dist folder (if present)
  - I have been trying to get hot updating to work, but currently you have to refresh the browser page when webpack completes (you can see messages in the console from the Webpack middleware prefixed with `[HMR]`  for **H**ot **M**odule **R**eplacement)

### Environment Variables
We have a number of options that can be set through environment variables.

| Variable            | Description                                                                         |
|---------------------|-------------------------------------------------------------------------------------|
| logColors           | `true` if you would like your console logs to be colorful                           |
| logLevel            | The minimum logs level you would like output. Defaults to info, uses npm log levels |
| googleAnalyticsKey  | Key used by Google Analytics. Should only be added in our production instance.      |

### Testing Locally
```
npm test
```
## Contributing
We're going to use Pull Requests to merge code into the master branch. The steps for getting new code into production are as follows:

1. Write some great new piece of code.
2. Open a Pull Request against the `master` branch.
3. Get two project maintainers to approve your changes with a 👍 reaction (Code Review). Reviewers will look for:
  - Any obvious mistakes in the code.
  - TravisCI passes tests.
  - Code is styled correctly (Following [Airbnb linting rules] (https://github.com/airbnb/javascript)).
  - Coverage is greater than 95%. New code adds necessary tests.
4. Project maintainers will merge PR into master.
5. TravisCI will automatically deploy.

## Content Feedback
If you're here because you want to share feedback about the learning experience content (such as typos you catch, suggestions, or discussion points), you can follow this process:

- [Create a new issue in this repository](https://github.ibm.com/agile/learning/issues) and describe your feedback
- Add the issue to the `New issues` pipeline
- Add the `Feedback: Content` label to the issue
- The team will triage the issues and decide how to best incorporate the feedback

### Project Maintainers
- Andre Perazzi
- Dayoung Kim
- John Revano
- Matthew Paul
- Mike Cordes
- Mike Ramos
