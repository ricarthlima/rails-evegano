class AddAttachmentCoverToProdutoImagems < ActiveRecord::Migration[5.2]
  def self.up
    change_table :produto_imagems do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :produto_imagems, :cover
  end
end
