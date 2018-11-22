class AddNotNullToTipoUsuarioFromUsuario < ActiveRecord::Migration[5.2]
  def change
    change_column_null :usuarios, :tipo_usuario, false
  end
end
