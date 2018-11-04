class CreateComponentes < ActiveRecord::Migration[5.2]
  def change
    create_table :componentes do |t|
      t.string :cod_europeu
      t.string :cod_INS
      t.string :nome
      t.text :descricao
      t.integer :class_vegan
      t.text :justificativa

      t.timestamps
    end
  end
end
