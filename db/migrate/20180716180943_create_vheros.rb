class CreateVheros < ActiveRecord::Migration[5.2]
  def change
    create_table :vheros do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :shortdescr
      t.string :jobtitle
      t.string :organization
      t.string :lastschool
      t.string :city
      t.string :province
      t.string :country
      t.string :handles
      t.string :interests

      t.timestamps
    end
  end
end
