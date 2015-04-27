require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
    erb(:index)
end

get('/results') do

    side1 = params.fetch('side1').to_i
    side2 = params.fetch('side2').to_i
    side3 = params.fetch('side3').to_i
    @input_tri = Triangle.new(side1,side2, side3)
    erb(:results)
end
