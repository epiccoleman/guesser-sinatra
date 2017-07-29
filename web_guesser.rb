require 'sinatra'
require 'sinatra/reloader'

secret_number = rand 100
message = "nothing"

get '/' do
  if params['guess'].to_i > secret_number
    message = "too high"
  end

  erb :index, :locals => { :secret_number => secret_number,
                           :message => message }

end
