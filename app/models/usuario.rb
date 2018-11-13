class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2, :twitter]
         
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise  :database_authenticatable, :registerable,
       # :recoverable, :rememberable, :trackable, :validatable,
        #:confirmable, :lockable, :timeoutable,
        #:omniauthable, omniauth_providers: [:facebook, :google_oauth2, :twitter]

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | usuario |
      usuario.email = provider_data.info.email
      usuario.password = Devise.friendly_token[0, 20]
      usuario.skip_confirmation!
    end
  end
end
