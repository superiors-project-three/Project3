class ChangeMedDescriptionToBeTextInApplies < ActiveRecord::Migration[5.2]
  def change
    change_column :applies, :med_description, :text
  end
end
