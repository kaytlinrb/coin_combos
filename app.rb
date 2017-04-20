require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:form)
end
