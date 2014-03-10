module.exports = (grunt)->
    grunt.initConfig
        pkg: grunt.file.readJSON "package.json"
        clean: ["build"]
        sass:
            debug:
                options:
                    style: "nested"
                    debugInfo: true
                    lineNumbers: true
                files:
                    "build/debug/css/page.css":"sass/*.sass"            
        coffee:
            debug:
                options:
                    sourceMap: true
                files: [
                    expand: true
                    cwd: "coffee"
                    src: "*.coffee"
                    dest: "build/debug/js/" 
                    ext: ".js"
                ]
        watch:
            sass:
                files: ["sass/*.sass"]
                tasks: ["sass:debug"]
            coffee:
                files: ["coffee/*.coffee"]
                tasks: ["coffee:debug"]

    grunt.loadNpmTasks "grunt-contrib-sass"
    grunt.loadNpmTasks "grunt-contrib-coffee"
    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-contrib-clean"

    grunt.registerTask "debug", ["clean", "sass:debug", "coffee:debug"]
    grunt.registerTask "release", ["clean", "sass:debug", "coffee:debug"]
    grunt.registerTask "default", "debug"
