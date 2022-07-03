class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :page, null: false
      t.integer :order
      t.text :comment

      t.timestamps
    end
  end
end
