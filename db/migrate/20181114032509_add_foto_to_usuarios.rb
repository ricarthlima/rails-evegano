class AddFotoToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :foto, :string
  end
end
