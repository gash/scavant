# Scavant: a ScavHunt Database on Rails

More information to follow.

## Getting up and running

First of all, you will need [git][]. Many systems will already have git installed, but if you don't yet have it, check the [git downloads][] for the version that is right for your system.

Next, you will need [ruby][] v1.9.2. The easiest way - or, well, the *best* way - to get it is through [rvm][], which will install and manage any ruby versions you need and keep them neatly isolated, as well as allowing you to install gems without using `sudo`. Nifty! To install rvm, simply run:

    bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )

You can then install and use the latest ruby with:

    rvm install 1.9.2
    rvm use 1.9.2 --default

Lastly, you'll want to make sure you have [bundler][], which will manage the project's dependencies. For that, you can simply run:

    gem install bundler

Finally, ready to get the project! To get up and running, clone this git repo (which you can find on the [github page][github])

    git clone git@github.com:gash/scavant.git

You can now make sure you have all the dependencies and start the server with:

    cd scavant/ && bundle install && rails server

After which Scavant should be available if you point you browser to http://localhost:3000/

[git]: http://git-scm.com/ "git: the fast version control system"
[git downloads]: http://git-scm.com/download "git Downloads"
[ruby]: http://www.ruby-lang.org/ "Ruby"
[rvm]: http://rvm.beginrescueend.com/ "Ruby Version Manager"
[bundler]: http://gembundler.com/ "Bundler"
[github]: http://github.com/gash/scavant/ "Scavant on Github"
