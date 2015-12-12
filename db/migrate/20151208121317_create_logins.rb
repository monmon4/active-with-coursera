class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :pass

      t.timestamps null: false
    end
  end
end
