exports.config =
  seleniumAddress: 'http://localhost:4723/wd/hub',

  capabilities:
    browserName: 'safari'
    'appium-version': '1.4.13'
    platformName: 'iOS'
    platformVersion: '9.2'
    deviceName: 'iPhone 5'

  framework: 'jasmine2'
  specs: [
    'spec/e2e/**/*.coffee'
  ]
  baseUrl: 'http://localhost:9000'
  jasmineNodeOpts:
    showColors: true
    defaultTimeoutInterval: 30000
