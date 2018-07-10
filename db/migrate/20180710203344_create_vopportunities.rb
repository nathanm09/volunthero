class CreateVopportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :vopportunities do |t|
      t.string :voppname
      t.string :vopplogo
      t.string :title
      t.string :shortdescr
      t.integer :vorganization_id

      t.timestamps
    end
  end
end
