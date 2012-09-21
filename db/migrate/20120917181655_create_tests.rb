class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :info

      t.timestamps
    end
  end
end
