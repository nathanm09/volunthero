class AddVheroPasswordDigestColumn < ActiveRecord::Migration[5.2]
  def change
      add_column :vheros, :password_digest, :string
  end
end
