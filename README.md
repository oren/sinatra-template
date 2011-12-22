This is the source code for the sinatra-template project on github.  
It's the basic structure I use for my Sinatra projects and it make things a bit more organized.  

What's inside?
--------------

* Modular Sinatra app version 1.3.1 using ruby 1.9.3@p0
* minitest for unit-level tests
* rack-test for routes tests
* capibara for integration tests (TBD)
* yard for documentation
* Rakefile, Gemfile, .rvmrc, .gitignore

Folders Structure
----------------

    app.rb         # require sinatra, vendor'd gems, models/init, routes/init, helpers/init

    helpers/         
      init.rb      # Requires each helper file
      helper1.rb   # Related helper methods

    models/          
      init.rb      # Require sequel, set up the DB; require each model, in controlled order
      user.rb      # model
      picture.rb   # model

    routes/          
      init.rb      # Require each route, in controlled order
      user.rb      # One or more routes related to some feature
      admin.rb     # One or more routes related to administration

    views/
      layout.erb   # Common layout
      index.erb    # Specific view

    test/         
      models       # minitest
      routes       # rack-test
      interaction  # capibara (TBD)

Setup
-----

Install Ruby 1.9.3 (if necessary). RVM is optional, but highly recommended

    rvm install ruby-1.9.3-p0
    git clone https://github.com/oren/sinatra-template.git
    cd sinatra-template (it will create sinatra-template gemset)

Install bundler

    gem install bundler

For local development, install the required gems, minus the production and staging gemspecs

    bundle install --without production staging

Run the tests

    rake

Generate YARD documentation

    rake yard

Run the server

    shotun
    and go to: http://127.0.0.1:9393
