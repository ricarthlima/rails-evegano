class RemoveTituloFromProdutoImagems < ActiveRecord::Migration[5.2]
  def change
    remove_column :produto_imagems, :titulo, :string
    remove_column :produto_imagems, :descricao, :string
  end
end
