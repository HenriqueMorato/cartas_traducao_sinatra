require 'sinatra'
require 'byebug'
require_relative 'carta'

set :static, true
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  @cartas = Carta.all
  erb :index
end

post '/cartas' do
  @carta = Carta.new(portugues: params[:portugues],
                     ingles: params[:ingles])
  @carta.save
  redirect '/'
end
