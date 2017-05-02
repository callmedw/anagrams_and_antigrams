require ('sinatra')
require ('sinatra/reloader')
require('rspec')
require ('./lib/anagrams_and_antigrams')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/success') do
  @first_input = params.fetch('first_input')
  @second_input = params.fetch('second_input')
  @output = @first_input.run_all_methods(@second_input)
  erb(:success)
end
