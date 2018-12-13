json.array! @categories do |category|
json.id category.id
json.name category.name
json.image category.image
json.created_at category.created_at
json.updated_at category.updated_at
end