class AddCepToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :cep, :string
  end
end
