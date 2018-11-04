class CreateUsuarioBuscaMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_busca_marcas do |t|
      t.references :usuario, foreign_key: true
      t.references :marca, foreign_key: true
      t.string :dt_busca

      t.timestamps
    end
  end
end
