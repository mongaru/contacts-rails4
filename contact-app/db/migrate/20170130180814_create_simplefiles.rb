class CreateSimplefiles < ActiveRecord::Migration
  def change
    create_table :simplefiles do |t|
      t.string :simplefile_uid
      t.string :simplefile_name
      t.string :title
      t.string :type
      t.string :extension

      t.timestamps null: false
    end
  end
end
