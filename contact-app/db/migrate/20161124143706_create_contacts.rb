class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.string :apellido
      t.string :apodo
      t.string :telefono
      t.string :email
      t.string :direccion

      t.timestamps null: false
    end
  end
end
