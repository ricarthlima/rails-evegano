require "rails_helper"

RSpec.describe Produto, :type => :model do
    
    before do
        @produto = Produto.new
        @produto.nome = "Ades Original"
        @produto.marca_id = 1
        @produto.descricao = "Bebida a base de soja."
        @produto.class_vegan = 1
        @produto.justificativa = "A bebida não possui sofrimento animal na sua produção
        porém sua marca patrocina rodeios pelo mundo."
    end
 
    it "é instanciavel" do
        expect(Produto.new).to be_present
    end
        
     
    it "é válido com todos os parâmetros" do
        produto = Produto.new
        expect(produto.respond_to?(:cod_barras)).to be_truthy
        expect(produto.respond_to?(:nome)).to be_truthy
        expect(produto.respond_to?(:marca_id)).to be_truthy
        expect(produto.respond_to?(:descricao)).to be_truthy
        expect(produto.respond_to?(:class_vegan)).to be_truthy
        expect(produto.respond_to?(:justificativa)).to be_truthy
    end
    
    it "não é válido, falta nome" do
        @produto.nome = nil
        @produto.valid
        expect(@produto.errors[:nome]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta ID da Marca" do
        @produto.marca_id = nil
        @produto.valid
        expect(@produto.errors[:marca_id]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta descricao" do
        @produto.descricao = nil
        @produto.valid
        expect(@produto.errors[:descricao]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta classificação vegana" do
        @produto.class_vegan = nil
        @produto.valid
        expect(@produto.errors[:class_vegan]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta justificativa" do
        @produto.justificativa = nil
        @produto.valid
        expect(@produto.errors[:justificativa]).to include("não pode ficar em branco")
    end
 
 end
  