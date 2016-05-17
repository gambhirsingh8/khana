class AddAttachmentImageToKhanas < ActiveRecord::Migration
  def up
    change_table :khaanas do |t|
      t.attachment :image
    end
  end

  def down
    remove_attachment :khaanas, :image
  end
end
