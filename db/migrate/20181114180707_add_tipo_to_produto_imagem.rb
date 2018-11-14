class AddTipoToProdutoImagem < ActiveRecord::Migration[5.2]
  def change
    add_column :produto_imagems, :tipo, :integer
  end
end
