module.exports = (grunt) ->
	pkg = grunt.file.readJSON 'package.json'
	grunt.initConfig

		compass:
			dist:
				options:
					config: 'config.rb'

		watch:
			sass:
				files: 'sass/*.scss'
				tasks: ['compass']

	# loadNpmTasks
	# package.jsonから読み込んでるもの
	# grunt-contrib-stylus, grunt-contrib-cssmin, grunt-contrib-watch
	for taskName of pkg.devDependencies when taskName.substring(0, 6) is 'grunt-'
		grunt.loadNpmTasks taskName

	grunt.registerTask 'default', ['watch']
