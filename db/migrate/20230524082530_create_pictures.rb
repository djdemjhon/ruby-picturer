class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :image_name
      t.string :attached_image_file

      t.timestamps
    end
  end
end
