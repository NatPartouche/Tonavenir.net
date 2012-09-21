class CreateInscriptionprepaconcours < ActiveRecord::Migration
  def change
    create_table :inscriptionprepaconcours do |t|
      t.string :nom
      t.string :prenom
      t.string :mail
      t.string :telephone
      t.string :sectionbac
      t.string :concoursenvisages
      t.string :message
      t.string :prepaconcoursid

      t.timestamps
    end
  end
end
