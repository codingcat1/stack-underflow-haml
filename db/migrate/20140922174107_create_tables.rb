class CreateTables < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.integer :user_id
      t.timestamps
    end

    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.timestamps
    end
  end
end
