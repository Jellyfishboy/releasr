#Releasr

[![Build Status](https://travis-ci.org/Jellyfishboy/releasr.svg?branch=master)](https://travis-ci.org/Jellyfishboy/releasr)

Simple release notes application, with a custom design. It utilises the open source [Soca](https://github.com/Jellyfishboy/soca) responsive administration template.

[Live site](http://release.tomdallimore.com)

[Release notes](http://release.tomdallimore.com/projects/releasr)

##Getting started

For development purposes, this repository requires the use of [Bower](http://bower.io/) in order to run the application.

Bower is a package manager tool (much like [NuGet](http://www.nuget.org/) or [Bundler](http://bundler.io/)) which can manage your third party asset library for you. You can find information on using and installing Bower over at their [github](https://github.com/bower/bower) page.

Lastly, you will need **npm** in order to install Bower. You can find a quick and easy installation guide over at the [npm github](https://github.com/npm/npm).

##Resolving dependencies

You will need to install the Bower asset dependencies, listed in `bower.json`:

    bower install
    

##Spinning up

To quickly get started, you can run the following rake tasks to populate your database with dummy data:

    rake releasr:install
  
Then start the server in the root with:

    rails s
    
Please note, if you would like to use a different port, you can the rails server command with the following option:

    rails s -p 9999


##Screenshots

###Desktop
![Home](http://tomdallimore.com/wp-content/uploads/2014/06/releasr-1.png "Home")  
![Project](http://tomdallimore.com/wp-content/uploads/2014/06/releasr-2.png "Project")  
![Releases](http://tomdallimore.com/wp-content/uploads/2014/06/releasr-3.png "Releases")  

###Mobile
![Project](http://tomdallimore.com/wp-content/uploads/2014/06/releasr-4.png "Project")  
![Releases](http://tomdallimore.com/wp-content/uploads/2014/06/releasr-5.png "Releases") 

## Versioning

Releasr follows Semantic Versioning 2.0 as defined at
<http://semver.org>.


##How to contribute

* Fork the project
* Create your feature or bug fix
* Commit (do not change version or history)
* Send a pull request against the *master* branch

##Credits
[Icomoon](http://icomoon.io/) - Iconography   
[Bootstrap-datepicker](http://www.eyecon.ro/bootstrap-datepicker/) - Datepicker plugin

##Copyright

Copyright (c) 2014 Tom Dallimore. See LICENSE for details.

