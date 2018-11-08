class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
