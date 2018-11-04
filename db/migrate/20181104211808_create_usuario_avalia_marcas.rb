class CreateUsuarioAvaliaMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_avalia_marcas do |t|
      t.references :usuario, foreign_key: true
      t.references :marca, foreign_key: true
      t.integer :estrelas
      t.text :comentario
      t.string :dt_avaliacao

      t.timestamps
    end
  end
end
