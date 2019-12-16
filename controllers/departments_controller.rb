require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/department.rb' )
also_reload( '../models/*' )

# index
get '/departments' do
  @departments = Department.all()
  erb( :"departments/index" )
end

# new
get '/departments/new' do
  erb( :"departments/new" )
end

# show
get '/departments/:id' do
  @department = Department.find( params[:id].to_i() )
  erb( :"departments/show" )
end

# create
post '/departments' do
  @department = Department.new(params)
  @department.save()
  erb( :"departments/create" )
end

# edit
get '/departments/:id/edit' do
@department = Department.find( params[:id] )
erb( :"departments/edit" )
end

# update
post '/departments/:id' do
  Department.new( params ).update
  redirect to '/departments'
end

# destroy
post '/departments/:id/delete' do
  department = Department.find( params[:id].to_i )
  department.delete()
  redirect to '/departments'
end
