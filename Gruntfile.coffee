module.exports = (grunt)->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    watch:
      coffee:
        files: ['src/**/*.coffee']
        tasks: 'coffee:app'
      coffee_spec:
        files: ['spec/**/*.coffee']
        tasks: 'coffee:spec'
    coffee:
      app:
        files: [
          expand: true
          cwd: 'src/'
          src: ['**/*.coffee']
          dest: 'dist/'
          ext: '.js'
        ]
    connect:
      options:
        open: true
      e2e: options:
        open: false
        port: 9000
    karma:
      unit:
        configFile: 'karma.conf.coffee'
    protractor:
      options:
        keepAlive: true
        noColor: false
      e2e:
        options:
          configFile: 'protractor.conf.coffee'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-karma'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-protractor-runner'

  grunt.registerTask 'default', ['coffee', 'watch']
  grunt.registerTask 'spec', ['karma']
  grunt.registerTask 'spec-e2e', ['connect:e2e', 'protractor:e2e']
