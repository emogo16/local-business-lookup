# Local_Business_Lookup_API 


#### By _**Erika Estefania Mogollon**_

## Technologies Used

* _Git Bash_
* _VS Code_
* Ruby on Rails
* _Rspec_
* _Pry_
* _Gemfile_
* _Github_
* _Capybara_
* _Sinatra_
*  _Postgres_
*  _PSQL
*  _ActiveRecord


## Description

This will project's API, users will be able to search local restaurants that are stored in a database. This also uses pagination which allows the user to limit the display ofr results to 5 per search.

## Setup/Installation Requirements

1. Go  to your web browser of your choice.

2. Then clone this reposiroty to your device. 'git clone'

3. 'bundle install' the project

4. For this project you are going to need  "postgres" installed. In your terminal run command 'postgres' or 'pg_ctl start'

5. Now you can run 'rake db:create'

6. Then run 'rake db:test:prepare'

7. Then run 'rake db:migrate'

8. Then run 'rake db:seed'

9. To start up a rails server run 'rails s', then navigate to localhost:3000 in your browser.

Warning: if you are on windows go to your database.yml file and add the following 

'''development:
  <<: *default
  database: local_business_lookup_development
  username: <%= ENV['POSTGRES_USERNAME'] %>
  password: <%= ENV['POSTGRES_PASSWORD'] %>

test:
  <<: *default
  database: local_business_lookup_test
  username: <%= ENV['POSTGRES_USERNAME'] %>
  password: <%= ENV['POSTGRES_PASSWORD'] %>

production:
  <<: *default
  database: local_business_lookup_production
  username: local_business_lookup
  password: <%= ENV['LOCAL_BUSINESS_LOOKUP_DATABASE_PASSWORD'] %> '''

## API Endpoints
| Method | URL | Result |
| :---         |     :---:      |          ---: |
| GET   | `localhost:3000/`     | Returns a list of all businesses in the database    |
| GET     | `localhost:3000/businesses`       | Returns a list of 5 businesses in the database      |
| POST   | `http://localhost:3000/businesses/?name=test_restaurant&location=downtown&phone=123&description=veryberrysmoothies`     | Create a business     |
| PUT    | `http://localhost:3000/businesses/3?name=Healthfreaks`       | Update business entry     |
| DELETE   | `http://localhost:3000/businesses/[:id]`     | Deletes a Business    |

## Known Bugs

There is no known bugs at the moment

## License

https://en.wikipedia.org/wiki/MIT_License

Copyright (c) _1/13/2022_ _Erika Estefania Mogollon_
