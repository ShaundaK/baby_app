json.array! @products do |product|
json.id product.id
json.name product.name
json.description product.description
json.age product.age
json.gender product.gender
json.created_at product.created_at
json.updated_at product.updated_at
# json.partial! "product.json.jbuilder", product: product
# json.user_info current_user
# json.message "hello"