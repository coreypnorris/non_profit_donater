##Non Profit Donater

####This is a Rails app that uses the Stripe web-API to send donations to non-profits.

This app isn't working as intended yet. Right now it can only charge Stripe's testing credit cards. However, you're still able to use it if you would like to. 

#####Instructions for using this app on your own

* Clone the repository in your terminal
* Run `rake db:create` to create the databases
* Run `rake db:migrate db:test:prepare` to migrate the databases
* Run `rake db:seed` to seed the database with sample donation data.
* Run `rails s` to start the server
* Open your web browser and navigate to localhost:3000 and you should see the app working

I built this project while I was a student at [Epicodus](http://www.epicodus.com/). [This exercise](http://www.learnhowtoprogram.com/lessons/non-profit-donations) was meant to introduce us to using third party web-APIs in our Rails projects.
