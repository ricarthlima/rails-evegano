class AdicionarDependenciaEmUsuario < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :usuario_busca_produtos, :usuarios
    remove_foreign_key :usuario_busca_marcas, :usuarios
    remove_foreign_key :usuario_busca_componentes, :usuarios
    remove_foreign_key :usuario_avalia_marcas, :usuarios
    remove_foreign_key :usuario_avalia_produtos, :usuarios
    
    add_foreign_key :usuario_busca_produtos, :usuarios, dependent: :delete
    add_foreign_key :usuario_busca_marcas, :usuarios, dependent: :delete
    add_foreign_key :usuario_busca_componentes, :usuarios, dependent: :delete
    add_foreign_key :usuario_avalia_marcas, :usuarios, dependent: :delete
    add_foreign_key :usuario_avalia_produtos, :usuarios, dependent: :delete
  end
end
