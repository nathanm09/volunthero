class AddEmailPasswordToVorganizations < ActiveRecord::Migration[5.2]
  def change
      add_column :vorganizations, :email, :string
      add_column :vorganizations, :password_digest, :string
  end
end
