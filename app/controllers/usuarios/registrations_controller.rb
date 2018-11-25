# frozen_string_literal: true

class Usuarios::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
=begin
  def edit
    params(:usuario).permit(:nome, :sobrenome, :cep)
  end

  # PUT /resource
  def update
    if usuario_params[:password].blank?
     @usuario.update_without_password(usuario_params_without_password)
    else
     @usuario.update(usuario_params)
    end
  
   if @usuario.valid?
    if @usuario == current_usuario
      sing_in(@usuario, baypass: true)
    end
    redirect_to admin_usuarios_url
   else
    render action: 'edit'
   end
  end
=end
  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

 # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end
  
  #def update_resource(resource, params)
  #  resource.update_without_password(params)
  #end
  
 # def usuario_params_without_password
   # usuario_params.delete(:password)
   # usuario_params.delete(:password_confirmation)
    #usuario_params
  #end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
