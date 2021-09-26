require 'sinatra/base'
require './lib/conversion'

class CurrencyConverterApp < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end 

  post '/convert' do
    conversion = Conversion.new(params[:amount].to_i, params[:from_currency])
    session[:result] = conversion.result
    redirect '/result'
  end 

  get '/result' do 
    session[:result]
    erb(:result, locals: { result: session[:result] })
  end 
end 

