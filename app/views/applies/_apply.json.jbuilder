json.extract! apply, :id, :student_first_name, :student_last_name, :birth_date, :parent_first_name, :parent_last_name, :occupation, :phone_number, :relative_relation, :address, :med_description, :created_at, :updated_at
json.url apply_url(apply, format: :json)
