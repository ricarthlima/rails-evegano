class WelcomeController < ApplicationController
    cookies[:first_time] = "true"
end
