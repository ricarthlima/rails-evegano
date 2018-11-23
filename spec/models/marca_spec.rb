require "rails_helper"

RSpec.describe Marca, :type => :model do
    
    before do
        @marca = Componente.new
        @marca.nome = "The Coca-Cola Company"
        @marca.descricao = "Empresa americana centenária do ramo de bebidas
        gaseificadas. Seu produto mais famoso é o refrigerante com o mesmo nome."
        @marca.class_vegan = 2
        @marca.justificativa = "A empresa patrocina rodeios pelo mundo."
    end
 
    it "é instanciavel" do
        expect(Marca.new).to be_present
    end
        
     
    it "é válido com todos os parâmetros" do
        marca = Marca.new
        expect(marca.respond_to?(:nome)).to be_truthy
        expect(marca.respond_to?(:descricao)).to be_truthy
        expect(marca.respond_to?(:class_vegan)).to be_truthy
        expect(marca.respond_to?(:justificativa)).to be_truthy
    end
    
    it "não é válido, falta nome" do
        @marca.nome = nil
        @marca.valid?
        expect(@marca.errors[:nome]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta descricao" do
        @marca.descricao = nil
        @marca.valid?
        expect(@marca.errors[:descricao]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta classificação vegana" do
        @marca.class_vegan = nil
        @marca.valid?
        expect(@marca.errors[:class_vegan]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta justificativa" do
        @marca.justificativa = nil
        @marca.valid?
        expect(@marca.errors[:justificativa]).to include("não pode ficar em branco")
    end
    
 end
  