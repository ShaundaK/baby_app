json.array! @users do |user|
json.id user.id
json.first_name user.first_name
json.last_name user.last_name
json.username user.username
json.password user.password
json.email user.email
json.phone_number user.phone_number
json.summary user.summary
json.gender_of_child user.gender_of_child
json.zipcode user.zipcode
json.created_at user.created_at
json.updated_at user.updated_at
end