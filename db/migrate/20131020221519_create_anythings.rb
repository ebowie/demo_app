class CreateAnythings < ActiveRecord::Migration
  def change
    create_table :anythings do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
