class AddPhotoToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :simplefile, index: true, foreign_key: true
  end
end
