class SessionsController < ApplicationController
   def create
      #render :create
      #render text: request.env['omniauth.auth'].to_yaml
      @twitter =  request.env['omniauth.auth']
      puts("TDD HAHA -----------------------------------")
      puts(@twitter.to_s)
      puts(@twitter[name].to_s)
      puts("TDD HAHA -----------------------------------")
      redirect_to inicio_path
   end
end