class CreateProdutoNomeAlternativos < ActiveRecord::Migration[5.2]
  def change
    create_table :produto_nome_alternativos do |t|
      t.references :produto, foreign_key: true
      t.string :nome_alternativo

      t.timestamps
    end
  end
end
