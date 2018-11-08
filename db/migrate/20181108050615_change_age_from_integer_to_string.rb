class ChangeAgeFromIntegerToString < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :age, :string
  end
end
