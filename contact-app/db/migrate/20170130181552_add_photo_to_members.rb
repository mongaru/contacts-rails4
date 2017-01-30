class AddPhotoToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :simplefile, index: true, foreign_key: true
  end
end
