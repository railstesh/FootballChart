# README

* Ruby version
	`ruby 2.6.3`

* System dependencies
	- Required Postgres DB	

* Database creation
	Run following commands in App folder
	- Run `bundle install` to install all gems
	- Run `rake db:create` to create DB
	- Run `rake db:migrate` to run all migrations

* How to run the test suite
	- Run `rspec` command in your App folder

Run `bundle exec rake environment create_team:get_team` command to create Teams record in your DB

- Parsed data
We are displaying data from DB on `localhost:3000` with proper fromat

- Highlighted Data
Row Highlighted on Parsed data table whose goal strike and goal against difference is minimum

- Raw data
At bottom of page we have `get raw data` button redirect to page showing raw data record directly from `.dat` file
