class ModifyVopportunityParameters < ActiveRecord::Migration[5.2]
  def change
      remove_column :vopportunities, :title
      add_column :vopportunities, :voppbanner, :string
      add_column :vopportunities, :voppdate, :string
      add_column :vopportunities, :vopphours, :string
      add_column :vopportunities, :voppaddress, :string
      add_column :vopportunities, :voppcity, :string
      add_column :vopportunities, :vopparea, :string
      add_column :vopportunities, :voppcountry, :string
  end
end
