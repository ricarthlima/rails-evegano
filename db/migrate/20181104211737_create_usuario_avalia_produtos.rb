class CreateUsuarioAvaliaProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_avalia_produtos do |t|
      t.references :usuario, foreign_key: true
      t.references :produto, foreign_key: true
      t.integer :estrelas
      t.text :comentario
      t.string :dt_avaliacao

      t.timestamps
    end
  end
end
