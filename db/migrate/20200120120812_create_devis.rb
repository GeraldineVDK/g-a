class CreateDevis < ActiveRecord::Migration[5.2]
  def change
    create_table :devis do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone
      t.string :email
      t.string :building_address
      t.integer :nr_de_passages
      t.integer :nr_d_heures
      t.boolean :cahier_de_charges
      t.string :service_demande
      t.date :date_rdv
      t.date :date_debut_souhaitee

      t.timestamps
    end
  end
end
