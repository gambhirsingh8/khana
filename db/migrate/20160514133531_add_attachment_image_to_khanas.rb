class AddAttachmentImageToKhanas < ActiveRecord::Migration
  def self.up
    change_table :khanas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :khanas, :image
  end
end
