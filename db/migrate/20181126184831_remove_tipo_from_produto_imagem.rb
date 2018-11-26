class RemoveTipoFromProdutoImagem < ActiveRecord::Migration[5.2]
  def change
    remove_column :produto_imagems, :tipo, :integer
  end
end
