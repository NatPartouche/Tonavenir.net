class CreateArticlePresses < ActiveRecord::Migration
  def change
    create_table :article_presses do |t|
      t.string :titre
      t.string :journal
      t.string :date
      t.text :description

      t.timestamps
    end
  end
end
