class SessionsController < ApplicationController
   def create
      #render :create
      #render text: request.env['omniauth.auth'].to_yaml
      @twitter =  request.env['omniauth.auth']
      render @twitter.to_erb
      # redirect_to inicio_path
   end
end