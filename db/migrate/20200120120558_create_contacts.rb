class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :phone
      t.string :service
      t.text :additional_info

      t.timestamps
    end
  end
end
