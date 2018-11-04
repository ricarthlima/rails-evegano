class CreateMarcaPertenceMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :marca_pertence_marcas do |t|
      t.references :marca, foreign_key: true
      t.references :marca, foreign_key: true

      t.timestamps
    end
  end
end
