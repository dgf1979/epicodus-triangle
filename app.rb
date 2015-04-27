require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/results') do
  triangle = Triangle.new(params.fetch('side_a'),params.fetch('side_b'),params.fetch('side_c'))
  @type = triangle.type()
  erb(:results)
end
