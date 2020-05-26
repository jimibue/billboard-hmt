## How I go about this

# design database on paper

# make models

rails db:create
rails g model artist name
rails g model song name artist:belongs_to
rails g model billboard name
rails g model ranking rank:integer song:belongs_to billboard:belongs_to

# try to create the seeds.rb file

gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'

# make changes/debug

# create a controller with a basic display index, think of ways how you might want the data back

rails g controller home index --skip-routes

# get basic data with the index

lets create another view thinking of different
