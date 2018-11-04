class AddSobrenomeToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :sobrenome, :string
  end
end
