class AddTelefoneToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :telefone, :string
  end
end
