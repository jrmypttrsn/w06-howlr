################################# WOLVES CONTROLLER #################################

# INDEX

get '/wolves/?' do
	@wolves = Wolf.all
	erb :"wolves/index"
end

# NEW
get '/wolves/new/?' do 
  @wolf = Wolf.new
  @howls = Howl.all 
  erb :"wolves/new"
end

# CREATE
post '/wolves/?' do
  @wolf = Wolf.new(params)

  if @wolf.save
    redirect to('/wolves')
  else
    erb :"wolves/new"
  end
end

# SHOW
get '/wolves/:id/?' do
  @wolf = Wolf.find_by_id(params['id']) 
  erb :"wolves/show"
end

# EDIT
 
 get '/wovles/:id/edit/?' do
   @wolf = Wolf.find_by_id(params['id'])
   @howls = Howl.all
   erb :"wolves/edit"
 end
 
 patch '/wolves/:id/?' do
   @wolf = Wolf.find_by_id(params['id'])
   @howls = Howl.find_by_id(params['howl_id'])
   if @howl.update_attributes(text: params['text'], 
                                title: params['title'])
     redirect to("/wolves/#{@wolf.id}")
   else
     erb :"wolves/edit"
   end
 	end

 	# DELETE
  delete "/wolves/:id/?" do
   @wolf = Wolf.find_by_id(params['id'])
   @wolf.destroy
 
   redirect to('/wolves')
  end