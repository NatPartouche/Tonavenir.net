class CreateEtapes < ActiveRecord::Migration
  def change
    create_table :etapes do |t|
      t.string :titre
      t.string :description

      t.timestamps
    end
  end
end
