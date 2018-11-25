class CreateCadastroExternos < ActiveRecord::Migration[5.2]
  def change
    create_table :cadastro_externos do |t|
      t.string :cod_barras
      t.string :nome
      t.string :marca
      t.text :descricao
      t.text :componentes

      t.timestamps
    end
  end
end
