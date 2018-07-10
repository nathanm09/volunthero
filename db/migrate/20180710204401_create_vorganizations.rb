class CreateVorganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :vorganizations do |t|
      t.string :vorgname
      t.string :website
      t.string :vorglogo
      t.string :shortdescr
      t.string :vorgtype
      t.string :city
      t.string :province
      t.string :country
      t.string :handles

      t.timestamps
    end
  end
end
