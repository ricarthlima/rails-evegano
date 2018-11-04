class CreateComponenteNomeAlternativos < ActiveRecord::Migration[5.2]
  def change
    create_table :componente_nome_alternativos do |t|
      t.references :componente, foreign_key: true
      t.string :nome_alternativo

      t.timestamps
    end
  end
end
