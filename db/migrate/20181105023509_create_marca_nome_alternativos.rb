class CreateMarcaNomeAlternativos < ActiveRecord::Migration[5.2]
  def change
    create_table :marca_nome_alternativos do |t|
      t.references :marca, foreign_key: true
      t.string :nome

      t.timestamps
    end
  end
end
