class CreateBanieres < ActiveRecord::Migration
  def change
    create_table :banieres do |t|
      t.string :titre
      t.string :description

      t.timestamps
    end
  end
end
