class AddVopportunityColumns < ActiveRecord::Migration[5.2]
  def change
      add_column :vopportunities, :vherodescription, :string
      add_column :vopportunities, :responsibilities, :string
      add_column :vopportunities, :jobfunction, :string
      add_column :vopportunities, :positionsavailable, :string
      add_column :vopportunities, :deadlinedate, :datetime
      add_column :vopportunities, :website, :string
      add_column :vopportunities, :industry, :string
  end
end
