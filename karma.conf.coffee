# Karma configuration
# Generated on Sun Dec 27 2015 00:16:33 GMT+0900 (JST)

module.exports = (config) ->
  config.set

    basePath: ''

    frameworks: ['jasmine']

    files: [
      'src/*.coffee'
      'spec/**/*Spec.coffee'
    ]

    exclude: []

    preprocessors:
      '**/*.coffee': ['coffee']

    reporters: ['progress']

    port: 9876

    colors: true

    logLevel: config.LOG_INFO

    autoWatch: true

    browsers: ['Chrome']

    singleRun: false

    concurrency: Infinity
