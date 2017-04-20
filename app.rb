require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_combos')

get('/') do
  erb(:index)
end

get('/coin_combos') do
  @money = params.fetch('money').to_i().coin_combos()
  erb(:coin_combos)
end
