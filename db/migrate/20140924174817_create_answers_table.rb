class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :description
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end
  end
end
