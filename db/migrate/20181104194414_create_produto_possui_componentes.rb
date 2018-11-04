class CreateProdutoPossuiComponentes < ActiveRecord::Migration[5.2]
  def change
    create_table :produto_possui_componentes do |t|
      t.references :produto, foreign_key: true
      t.references :componente, foreign_key: true

      t.timestamps
    end
  end
end
