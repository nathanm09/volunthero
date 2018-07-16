class CreateVopportunityEnrolments < ActiveRecord::Migration[5.2]
  def change
    create_table :vopportunity_enrolments do |t|
      t.integer :vhero_id, foreign_key:true
      t.integer :vopportunity_id, foreign_key:true

      t.timestamps
    end
  end
end
