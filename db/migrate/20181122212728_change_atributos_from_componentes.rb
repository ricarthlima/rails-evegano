class ChangeAtributosFromComponentes < ActiveRecord::Migration[5.2]
  def change
    change_column_null :componentes, :nome, false
    change_column_null :componentes, :descricao, false
    change_column_null :componentes, :class_vegan, false
    change_column_null :componentes, :justificativa, false
  end
end
