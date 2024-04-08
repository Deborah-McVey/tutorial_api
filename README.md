https://www.bezkoder.com/angular-17-crud-example/

This is the Back End to tutorial_client (Angular 17.2)

models/tutorial.model.ts

export class Tutorial {
  id?: any;
  title?: string;
  description?: string;
  published?: boolean;
}

add gems:
 gem 'jwt' gem 'blueprinter' gem 'kaminari' gem "bcrypt", "~> 3.1.7" gem "rack-cors" in development: gem 'rspec-rails' gem 'factory_bot_rails' gem 'faker'

rails g rspec:install rails active_storage:install 

config/initializers.cors.rb

rails g scaffold Tutorial title:string description:string published:boolean

rails db:migrate

db/seeds.rb

rails db:seed

set up factories with Faker 

faker in rails_helper.rb

bundle i

config/routes.rb
define routes
use Postman

Methods	Urls	Actions
POST	/api/tutorials	create new Tutorial
GET	/api/tutorials	retrieve all Tutorials
GET	/api/tutorials/:id	retrieve a Tutorial by :id
PUT	/api/tutorials/:id	update a Tutorial by :id
DELETE	/api/tutorials/:id	delete a Tutorial by :id
DELETE	/api/tutorials	delete all Tutorials
GET	/api/tutorials?title=[keyword]	find all Tutorials which title contains keyword

** todo: look at routes and controller for find by title keyword **
