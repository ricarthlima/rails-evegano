class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :cod_barras
      t.string :nome
      t.references :marca, foreign_key: true
      t.text :descricao
      t.integer :class_vegan
      t.text :justificativa

      t.timestamps
    end
  end
end
