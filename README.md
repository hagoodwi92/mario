# README

Admin email: test1@test1.com
Password: password

This project is a rails app that displays products, and their nested reviews. It has full CRUD functionality, as well as authentication and authorization.

Endpoints
- [x] GET- /products, /products/:id, /products/:id/review/:id 
- [x] POST- /products/, /reviews/
- [x] PUT- /products/:id, /reviews/:id
- [x] DELETE- /products/:id, /reviews/:id

Setup/Installation
1. `$ git clone` [this repository](https://github.com/hagoodwi92/mario)
2. `$ cd mario`
3. `$ bundle install`
4. `$ rails db:create`
5. `$ rails db:migrate`
6. `$ rails s` to start the server 

Known Bugs
- No known bugs at this time. 

Technologies used
- Ruby on Rails
  -Authentication and authorization
  - ActiveRecord
  - rspec testing
  - faker

Support
- Contact hagoodwi@gmail.com for support. 

License 
- {This software is licensed under the MIT license}
- Copyright (c) 2020 {Alex Goodwin}