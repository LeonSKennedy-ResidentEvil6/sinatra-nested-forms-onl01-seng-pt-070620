require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do 
    erb :root
  end 

  get '/new' do
    erb :new
  end 

  post '/pirates' do 

    @pirate = Pirate.new(params[:pirate])

    param[:pirate][:ships].each do |details|
      Ship.new(details)
    end 

    @ships = Ship.all
    
    erb :show
  end 

  end
end
