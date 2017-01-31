class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :content
      t.belongs_to :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
