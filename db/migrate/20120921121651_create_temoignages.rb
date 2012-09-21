class CreateTemoignages < ActiveRecord::Migration
  def change
    create_table :temoignages do |t|
      t.string :nom
      t.string :prenom
      t.string :fbid
      t.string :message

      t.timestamps
    end
  end
end
