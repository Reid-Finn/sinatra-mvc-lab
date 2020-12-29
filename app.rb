require_relative 'config/environment'

class App < Sinatra::Base

   get '/' do
       erb :user_input
   end

    post '/' do
        @text_from_user = PigLatinizer.new(params:[user_text])

        erb :piglatinize
    end
end