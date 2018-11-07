RSpec.describe "Este teste é para a classe Produto" do
 
    it "Testa a instancia de produto" do
        expect(Produto.new).to be_present
    end
        
     
    it "Testa as propriedades nome do produto" do
        produto = Produto.new
        produto.cod_barras = "12341243678"
        produto.nome = "Produto Ades"
        expect(produto.save).to be_truthy
    end
 
 
    it "Testa o método save com o nome" do
        produto = Produto.new
        produto.nome = "Ades Original"
        expect(produto.save).to be_truthy
    end
    
    
 end
  