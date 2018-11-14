class CreateProdutoImagems < ActiveRecord::Migration[5.2]
  def change
    create_table :produto_imagems do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
