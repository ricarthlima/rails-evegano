require "rails_helper"

RSpec.describe Componente, :type => :model do
    
    before do
        @componente = Componente.new
        @componente.nome = "Vitamina D"
        @componente.descricao = "Encontrada em sucos e e bebidas lácteas, pode 
        ser de origem sintética ou natural."
        @componente.class_vegan = 1
        @componente.justificativa = "Se for fabricada em laboratório, não há
        sofrimento animal envolvido. Mas se for de origem natural, é retirada da
        lã de ovelhas."
    end
 
    it "é instanciavel" do
        expect(Componente.new).to be_present
    end
        
     
    it "é válido com todos os parâmetros" do
        componente = Componente.new
        expect(componente.respond_to?(:cod_europeu)).to be_truthy
        expect(componente.respond_to?(:cod_INS)).to be_truthy
        expect(componente.respond_to?(:nome)).to be_truthy
        expect(componente.respond_to?(:descricao)).to be_truthy
        expect(componente.respond_to?(:class_vegan)).to be_truthy
        expect(componente.respond_to?(:justificativa)).to be_truthy
    end
    
    it "não é válido, falta nome" do
        @componente.nome = nil
        @componente.valid?
        expect(@componente.errors[:nome]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta descricao" do
        @componente.descricao = nil
        @componente.valid?
        expect(@componente.errors[:descricao]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta classificação vegana" do
        @componente.class_vegan = nil
        @componente.valid?
        expect(@componente.errors[:class_vegan]).to include("não pode ficar em branco")
    end
    
    it "não é válido, falta justificativa" do
        @componente.justificativa = nil
        @componente.valid?
        expect(@componente.errors[:justificativa]).to include("não pode ficar em branco")
    end
    
 end
  