require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
    erb(:index)
end

get('/results') do

    side1 = params.fetch('side1')
    side2 = params.fetch('side2')
    side3 = params.fetch('side3')
    @results = Triangle.new(side1,side2, side3)
    erb(:results)
end
