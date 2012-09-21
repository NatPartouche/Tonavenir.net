class CreateFranchises < ActiveRecord::Migration
  def change
    create_table :franchises do |t|
      t.string :nom
      t.string :prenom
      t.text :description
      t.string :adresse
      t.string :mail
      t.string :telefix
      t.string :telmob

      t.timestamps
    end
  end
end
