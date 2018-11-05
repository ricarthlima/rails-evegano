class AddDevToUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :dev, :boolean
  end
end
