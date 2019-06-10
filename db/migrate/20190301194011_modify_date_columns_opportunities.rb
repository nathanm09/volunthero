class ModifyDateColumnsOpportunities < ActiveRecord::Migration[5.2]
  def change
      remove_column :vopportunities, :voppdate
      add_column :vopportunities, :voppdate, :datetime
  end
end
