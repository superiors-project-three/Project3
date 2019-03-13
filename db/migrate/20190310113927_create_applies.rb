class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.string :student_first_name
      t.string :student_last_name
      t.date :birth_date
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :occupation
      t.integer :phone_number
      t.string :relative_relation
      t.string :address
      t.string :med_description

      t.timestamps
    end
  end
end
