This is the source code for the sinatra-template project on github.
It's the basic structure I use for my Sinatra projects and it make things a bit more organized.

The structure
-------------

  app.rb           # require sinatra, haml, vendor'd gems, models/init, routes/init, helpers/init
  helpers/         
      init.rb      # Requires each helper file
      helper1.rb   # Related helper methods

  models/          
      init.rb      # Require sequel, set up the DB; require each model, in controlled order
      foo.rb       # One or more Sequel models
      bar.rb       # One or more related models

  routes/          
      init.rb      # Require each route, in controlled order
      admin.rb     # One or more routes related to administration
      foo.rb       # One or more routes related to some feature

  views/
      layout.haml  # Common layout
      foo.haml     # Specific view
      bar.haml     # Specific view


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
