module.exports = (grunt)->
  grunt.initConfig
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

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffee', 'watch']
