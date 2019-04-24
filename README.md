# Kut It!

Kut-It is a cut calculator for drum makers that calculates cut sizes for ply and solid drum shells. Once you calculate a 
cut, you can store the cut in you cut list. There is also a "scrap bin" where you can log scraps from cuts. Stay sharp with 
Kut-It! Features:

Calculate cut dimensions for ply and single ply shells.
Add a margin of error for dificult and unrully woods to your cuts with the "slop" feature.
Store all your cut dimensions in a cut list.
Keep track of all of your scraps, cut-offs and drop-cuts with the scrapbin.

## How to Install

Prerequisites:
You will need Ruby version 2.4.5 or greater and Rails version 5.2.3

To check your version using the terminal, run: rails -v. If you have not installed rails, in terminal, run: gem install rails
-v 5.2.3

## Getting Started

To setup on a local machine please find an appropriate directory and clone down the repo and then run the initial setup using 
the following commands. Note: it uses Ruby version 2.4.5 and Rails version 5.2.3.

git clone git@github.com:danbriechle/Kut-It.git
cd kut-it
bundle
rake db:{create,migrate,seed}

Once these are ready you can run the server:

rails s
Navigate to localhost:3000. The application will load to the page. Enjoy!

## Testing

The testing suite uses the following gems:
gem 'rspec-rails'
gem 'capybara'
gem 'launchy'
gem 'pry'
gem 'rb-readline'
gem 'simplecov'
gem 'shoulda-matchers'

Note: Before running RSpec, ensure you're in the project root directory. Testing includes unit and feature tests made with 
RSpec

To run the full testing suite run this command from the terminal: rspec

After RSpec has completed, you should see all tests passing as GREEN. Any tests that have failed or thrown an error will 
display RED. Any tests that have been skipped will be displayed as YELLOW.

Tests Coverage
Kut-it has 100% coverage on all model & feature testing. Validation and relationship testing was also included in the 
application. Kut-It also utilize Travis CI for continuous deployment and integration. 

## Deployment
'Kut-It' is currently deployed here on Heroku.
http://kut-it.herokuapp.com/

Additional Tools Utilized
Rails
PostrgeSQL
Waffle.io
GitHub
Pry
Travis CI

Developers:
Daniel Briechle 
https://github.com/danbriechle
