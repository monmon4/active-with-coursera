class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :image
      t.integer :likes

      t.timestamps null: false
    end
  end
end
