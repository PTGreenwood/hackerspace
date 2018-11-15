# README
GovHack Hackerspace Event Management System. Built in Ruby on Rails with Postgres for final semester project. See file TeamMembers for contributors.

# Premise
Client requested a redesign and implementation of the Event Management System that runs the GovHack Events: "Hackerspace".  

# What is it?
From their website (https://www.govhack.org/about-us/) GovHack is an open data hackathon, run annually by volunteers, focussed on unlocking the value in open data published by government. It has been run by a team of volunteers and grown from a small data mashup event to an international competition that brings over 3000 people together to innovate, collaborate and apply their creative skills to open government data. GovHack is for coders, designers, story tellers, activists, analysts, journalists and anyone that wants to tap into the vast amount of information made available by governments.

# Screenshots
You'll find project screenshots within the screenshots directory under main.

# Functionality and included elements.
- Full UI/UX overhall and redesign.
- Authenticated/UnAuthenticated User access.
- Google Account Integration.
- Multiple role based permissions/privileges for restricted access.
- Account Management/Account Creation.
- Project creation and management.
- Team Management (Creation, Management, Invites, Deletion).
- Project association within teams.
- Multiple region and event location management. Concurrent events taking place.
- Challenge entry + project assignment.
- Dataset inclusion from 3rd Party sources.
- Multiple event types (State and National).
- Judging Criteria and ability to Judge projects.

# Considerations included in final delivery.
- System can be usable in future years without clearing data or rehosting.
- Multi-platform friendly (Mobile/Desktop/Laptop etc).

# 3rd Party libraries, gems, tooling, frameworks, databases used.
- Bootstrap 4.
- SCSS.
- Device (User Management and Authentication) GEM.
- Postgres Database.
- jQuery.
- Carrierwave & mini-magick GEM (Image uploading of avatars).
- Coffee script.
- Cancancan (Role based permissions) GEM.
- Omni-auth-google-oauth2 GEM (for Google Account login).
- Capybara + Selenium/Chrome-webdriver GEMs (Tests).
- Docker & Docker-Compose
-
# To Run/Install
* Need to have `docker` and `docker-compose` installed. 
* Make sure your user is in the docker group, or use sudo if prefered.
* Clone repo  
* Build the docker container with `docker-compose build` The first time will 
take a while, but subsequent builds will be much shorter. Builds will only need to be done if either the Gemfile or Dockerfile is changed
* Build the database with `docker-compose run web bundle exec rake db:create`
* Run the app with `docker-compose up` then browse to 127.0.0.1:3000. Should see a rails landing page.
* Run rails commands with `docker-compose run --rm web rails <COMMAND>`
* You will see this `docker-compose run --rm web` prefix alot, I recommend creating an alias. 
