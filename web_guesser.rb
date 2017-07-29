require 'sinatra'
require 'sinatra/reloader'

secret_number = rand 100
message = ""

get '/' do
  if params['guess'].to_i > secret_number
      message = "Your guess is too high."
  elsif params['guess'].to_i < secret_number
      message = "Your guess is too low."
  elsif params['guess'].to_i == secret_number
      message = "You guessed the secret number!"
  end

  erb :index, :locals => { :secret_number => secret_number,
                           :message => message }

end
