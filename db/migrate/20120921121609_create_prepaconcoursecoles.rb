class CreatePrepaconcoursecoles < ActiveRecord::Migration
  def change
    create_table :prepaconcoursecoles do |t|
      t.string :titre
      t.string :soustitre
      t.string :heure
      t.string :description
      t.string :prix
      t.string :franchiseid
      t.string :concoursid

      t.timestamps
    end
  end
end
