class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :title
      t.string :editor
      t.text :content
      t.integer :password
      
      
      t.timestamps null: false
    end
  end
end
