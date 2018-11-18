class UpdateUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column(:usuarios, :provider, :string, limit: 50, null: false, default: '')
    add_column(:usuarios, :uid, :string, limit: 500, null: false, default: '')
  end
end
