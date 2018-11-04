class CreateMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :marcas do |t|
      t.string :nome
      t.text :descricao
      t.integer :class_vegan
      t.text :justificativa

      t.timestamps
    end
  end
end
