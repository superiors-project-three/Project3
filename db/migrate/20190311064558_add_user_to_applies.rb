class AddUserToApplies < ActiveRecord::Migration[5.2]
  def change
    add_reference :applies, :user, foreign_key: true
  end
end
