class CreateIndexPeople < ActiveRecord::Migration
  def change
    create_table :index_people do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
