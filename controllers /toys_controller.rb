require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/toy.rb' )
also_reload( '../models/*' )
require('pry')

# index
get '/toys' do
  @toys = Toy.all()
  erb( :"toys/index" )
end

# new
get '/toys/new' do
  erb( :"toys/new" )
end

# show
get '/toys/:id' do
  @toy = Toy.find( params[:id].to_i() )
  erb( :"toys/show" )
end

# create
post '/toys' do
  @toy = Toy.new(params)
  @toy.save()
  erb( :"toys/create" )
end

# edit
get '/toys/:id/edit' do
@toy = Toy.find( params[:id] )
erb( :"toys/edit" )
end

# update
post '/toys/:id' do
  Toy.new( params ).update
  redirect to '/toys'
end

# destroy
post '/toys/:id/delete' do
  @toy.delete( params[:id] )
  redirect to '/toys'
end

binding.pry
null
