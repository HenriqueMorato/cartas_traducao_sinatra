require 'sinatra'
require_relative 'carta'

set :static, true
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  @cartas = []
  @cartas << Carta.new(ingles: 'Red', 
                       portugues: 'Vermelho')
  @cartas << Carta.new(ingles: 'Blue', 
                       portugues: 'Azul')
  erb :index
end
