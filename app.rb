require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end
