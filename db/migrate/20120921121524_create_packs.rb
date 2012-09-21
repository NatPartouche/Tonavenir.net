class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.string :titre
      t.string :description

      t.timestamps
    end
  end
end
