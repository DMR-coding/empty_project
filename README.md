empty_project
=============
A skeletal template for client development usign my favored technologies.

Technologies
------------
* Automation by Grunt -- http://gruntjs.com
* Logic in coffeescript -- http://coffeescript.org
* Styling in SASS (using the indented syntax) -- http://sass-lang.com
* Templating using Hogan (a Mustache implementation) -- http://twitter.github.io/hogan.js/
* Docs generation by YUIDoc (uses JSDoc syntax) -- http://yui.github.io/yuidoc/ 

Libraries
---------
* Code modularization by requirejs -- http://requirejs.org
* i18n by requirejs!i18n -- http://requirejs.org
* Utility functions by underscore -- http://underscorejs.org
* DOM manipulation by jQuery -- http://jquery.com

Getting Started
---------------
__Note: You may need to elevate privileges to run all "gem" and "npm" commands, e.g. prefix them as 'sudo gem' and 'sudo npm'__

1. Install Ruby (per your system's package management standards)
2. Install Sass:  gem install sass
3. Install NodeJS (per your system's package management standards)
4. Install the Grunt command line interface:  npm install --global grunt-cli
5. Clone this repository and enter its directory.
6. Install package dependencies:  npm install
7. To build:  grunt
8. To automatically build as files are changed:  grunt watch
