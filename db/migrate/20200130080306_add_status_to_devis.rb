class AddStatusToDevis < ActiveRecord::Migration[5.2]
  def change
    add_column :devis, :status, :string
  end
end
