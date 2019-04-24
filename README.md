# Kut it!

<img width="723" alt="Screen Shot 2019-04-24 at 12 32 15 PM" src="https://user-images.githubusercontent.com/42418816/56694449-e9d0fa00-66a3-11e9-986b-e418bcef543e.png">

Kut it is a cut calculator for drum makers that calculates cut sizes for ply and solid drum shells. Once you calculate a 
cut, you can store the cut in you cut list. There is also a "scrap bin" where you can log scraps from cuts. Stay sharp with 
Kut it! 

## Features:

Calculate cut dimensions for ply and single ply shells.

<img width="1439" alt="Screen Shot 2019-04-24 at 12 30 57 PM" src="https://user-images.githubusercontent.com/42418816/56694585-49c7a080-66a4-11e9-9630-ded320a8b3d1.png">

Add a margin of error for dificult and unrully woods to your cuts with the "slop" feature. The solid shell calculator even 
accounts for scarf length

<img width="1439" alt="Screen Shot 2019-04-24 at 12 31 07 PM" src="https://user-images.githubusercontent.com/42418816/56694832-d96d4f00-66a4-11e9-90ff-39018f3d85b9.png">

Store all your cut dimensions in a cut list. Keep track of all of your scraps, cut-offs and drop-cuts with the scrap bin.

<img width="1437" alt="Screen Shot 2019-04-24 at 12 30 47 PM" src="https://user-images.githubusercontent.com/42418816/56694683-7e3b5c80-66a4-11e9-830b-f119b3f4c632.png">

You can even add dimensions directly form either calculator directly to the cut list.

<img width="292" alt="Screen Shot 2019-04-24 at 3 26 32 PM" src="https://user-images.githubusercontent.com/42418816/56695461-5fd66080-66a6-11e9-913c-18d8d517bbdb.png">


When you've completed a shell you can select "Finished" to remove it from the cut list. Or when you can't find a reason to 
keep a scrap you can select "Toss it" to remove it from the scrap bin.

<img width="1440" alt="Screen Shot 2019-04-24 at 3 25 39 PM" src="https://user-images.githubusercontent.com/42418816/56695148-9b245f80-66a5-11e9-8502-42c3ccad6cdf.png">

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

## Tests Coverage
<img width="1105" alt="Screen Shot 2019-04-24 at 12 14 30 PM" src="https://user-images.githubusercontent.com/42418816/56694499-0cfba980-66a4-11e9-9751-a6e2ba7bebcd.png">

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
