class CallbacksController < Devise::OmniauthCallbacksController 
    def facebook 
        @usuario = Usuario.from_omniauth(request.env["omniauth.auth"]) 
        if @usuario.persisted? 
            sign_in_and_redirect @usuario, :event => :authentication
    else
      redirect_to new_user_registration_url
    end
  end
 
  def failure
    redirect_to root_path
  end
end