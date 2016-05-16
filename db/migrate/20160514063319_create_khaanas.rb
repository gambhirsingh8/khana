class CreateKhaanas < ActiveRecord::Migration
  def change
    create_table :khaanas do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
