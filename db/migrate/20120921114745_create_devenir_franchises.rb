class CreateDevenirFranchises < ActiveRecord::Migration
  def change
    create_table :devenir_franchises do |t|
      t.string :prenom
      t.string :nom
      t.string :ville
      t.string :departement
      t.string :tel
      t.string :message

      t.timestamps
    end
  end
end
