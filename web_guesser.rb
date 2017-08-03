require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand 100
number_message = ""
message = ""

get '/' do
  if params['guess'].to_i - 5 > SECRET_NUMBER
      message = "Your guess is way too high."
  elsif params['guess'].to_i + 5 < SECRET_NUMBER
      message = "Your guess is way too low."
  elsif params['guess'].to_i > SECRET_NUMBER
      message = "Your guess is too high."
  elsif params['guess'].to_i < SECRET_NUMBER
      message = "Your guess is too low."
  elsif params['guess'].to_i == SECRET_NUMBER
      message = "You guessed the secret number!"
      number_message = "Secret number was #{SECRET_NUMBER}"
  end

  erb :index, :locals => { :number_message => number_message,
                           :message => message }

end
