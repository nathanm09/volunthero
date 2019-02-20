class AddProfilePictureToVheros < ActiveRecord::Migration[5.2]
  def change
      add_column :vheros, :profile_pic, :string
  end
end
