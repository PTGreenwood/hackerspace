# README
Base docker image for Seaside-Magicians

* Database is postgres, alternatives are possible, this was just the default

# Install
* Need to have `docker` and `docker-compose` installed. 
* Make sure your user is in the docker group, or use sudo if prefered.
* Clone repo  
* Build the docker container with `docker-compose build` The first time will 
take a while, but subsequent builds will be much shorter. Builds will only need to be done if either the Gemfile or Dockerfile is changed
* Build the database with `docker-compose run web bundle exec rake db:create`
* Run the app with `docker-compose up` then browse to 127.0.0.1:3000. Should see a rails landing page.
* Run rails commands with `docker-compose run --rm web rails <COMMAND>`
* You will see this `docker-compose run --rm web` prefix alot, I recommend creating an alias. 
Tested in Ubuntu 18.04, not sure if windows works, will probably need to edit 
the volume mappings for Windows.
