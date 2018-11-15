class RemoveAgeOfChildFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :age_of_child, :string
  end
end
