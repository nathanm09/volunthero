class RemoveUsersForeignKeyFromVheros < ActiveRecord::Migration[5.2]
  def change
      remove_foreign_key :vheros, column: :user_id
  end
end
