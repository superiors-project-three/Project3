class ChangeIntegerLimitInYourApplies < ActiveRecord::Migration[5.2]
  #this so the user can add a full phone number without getting a range error
  def change
    change_column :applies, :phone_number, :integer, limit: 8
  end
end
