require "rails_helper"

RSpec.describe Usuario, :type => :model do

    it "é instanciavel" do
        expect(Usuario.new).to be_present
    end
        
     
    it "é válido com todos os parâmetros" do
        usuario = Usuario.new
        expect(usuario.respond_to?(:email)).to be_truthy
        expect(usuario.respond_to?(:encrypted_password)).to be_truthy
        expect(usuario.respond_to?(:reset_password_token)).to be_truthy
        expect(usuario.respond_to?(:reset_password_sent_at)).to be_truthy
        expect(usuario.respond_to?(:remember_created_at)).to be_truthy
        expect(usuario.respond_to?(:nome)).to be_truthy
        expect(usuario.respond_to?(:sobrenome)).to be_truthy
        expect(usuario.respond_to?(:cep)).to be_truthy
        expect(usuario.respond_to?(:pais)).to be_truthy
        expect(usuario.respond_to?(:telefone)).to be_truthy
        expect(usuario.respond_to?(:tipo_usuario)).to be_truthy
        expect(usuario.respond_to?(:dev)).to be_truthy
        expect(usuario.respond_to?(:provider)).to be_truthy
        expect(usuario.respond_to?(:uid)).to be_truthy
    end
    
    it "não é válido, falta email" do
        usuario = Usuario.new
        usuario.email = nil
        usuario.valid?
        expect(usuario.errors[:email]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta tipo do usuario" do
        usuario = Usuario.new
        usuario.tipo_usuario = nil
        expect(usuario.valid?).to be_falsey
    end

 end
  
  