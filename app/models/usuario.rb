class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "assets/images/logo.png" #permissão de upolad para o paperclip
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
end
