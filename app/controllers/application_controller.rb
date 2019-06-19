require './config/environment'

class ApplicationController < Sinatra::Base

  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/associate" do
    @artists = Artist.all
    @instruments = Instrument.all
    erb :associate
  end

  post "/associate/new" do
    Artistinstrument.create(params)
    redirect "/artists/#{params[:artist_id]}"
  end

end