class Apply < ApplicationRecord
    belongs_to :user
    validates :student_first_name, :student_last_name, :birth_date, :parent_first_name, :parent_last_name, :occupation, :phone_number, :relative_relation, :address, :med_description,  presence: true
    validates :phone_number,numericality: true
    validates :student_first_name, :student_last_name, :parent_first_name, :parent_last_name, numericality: false
    
end
