require ('sinatra')
require ( 'sinatra/contrib/all' )
require_relative( 'controllers/departments_controller' )
require_relative( 'controllers/toys_controller' )

get '/' do
  erb(:index)
end
