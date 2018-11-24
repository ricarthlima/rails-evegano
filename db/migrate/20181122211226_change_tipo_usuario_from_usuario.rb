class ChangeTipoUsuarioFromUsuario < ActiveRecord::Migration[5.2]
  def change
    change_column_default :usuarios, :tipo_usuario, from: nil, to: 4
  end
end
