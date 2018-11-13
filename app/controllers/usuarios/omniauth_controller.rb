class Usuarios::OmniauthController < ApplicationController
    # facebook callback
    def facebook
      @usuario = Usuario.create_from_provider_data(request.env['omniauth.auth'])
      if @usuario.persisted?
        sign_in_and_redirect @usuario
        set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      else
        flash[:error] = 'There was a problem signing you in through Facebook. Please register or try signing in later.'
        redirect_to new_usuario_registration_url
      end 
    end
    
    
    # google callback
    def google_oauth2
      @usuario = Usuario.create_from_google_data(request.env['omniauth.auth'])
      if @usuario.persisted?
        sign_in_and_redirect @usuario
        set_flash_message(:notice, :success, kind: 'Google') if is_navigational_format?
      else
        flash[:error] = 'There was a problem signing you in through Google. Please register or try signing in later.'
        redirect_to new_usuario_registration_url
      end 
    end
    
    # twitter callback
    def twitter
      @usuario = Usuario.create_from_twitter_data(request.env['omniauth.auth'])
      if @usuario.persisted?
        sign_in_and_redirect @usuario
        set_flash_message(:notice, :success, kind: 'Twitter') if is_navigational_format?
      else
        flash[:error] = 'There was a problem signing you in through Twitter. Please register or try signing in later.'
        redirect_to new_usuario_registration_url
      end 
    end
    
    # callback de falha
    def failure
      flash[:error] = 'There was a problem signing you in. Please register or try signing in later.' 
      redirect_to new_usuario_registration_url
    end
end
