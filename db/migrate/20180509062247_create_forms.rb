class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :category
      t.string :position
      t.text :description

      t.timestamps null: false
    end
  end
end
