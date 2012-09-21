class CreateConcours < ActiveRecord::Migration
  def change
    create_table :concours do |t|
      t.string :titre
      t.string :soustitre

      t.timestamps
    end
  end
end
