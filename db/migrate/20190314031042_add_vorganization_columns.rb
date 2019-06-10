class AddVorganizationColumns < ActiveRecord::Migration[5.2]
  def change
      add_column :vorganizations, :vorgaddress, :string
      add_column :vorganizations, :aboutus, :string
  end
end
