# README
Base docker image for Seaside-Magicians

* Database is postgres, alternatives are possible, this was just the default

# Intsall
* Need to have `docker` and `docker-compose` installed. 
* Clone repo  
* Build the docker container with `docker-compose build` The first time will 
take a while, but subsequent builds will be much shorter.
* Run the app with `docker-compose up` then browse to 127.0.0.1:3000. Should see a rails landing page.
* Run rails commands with `docker-compose run --rm web rails <COMMAND>`

Tested in Ubuntu 18.04, not sure if windows works, will probably need to edit 
the volume mappings for Windows.
